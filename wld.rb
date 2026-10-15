class Link
  attr_reader :name, :url

  def initialize(name, url, description = nil)
    @name = name
    @url = url
    @description = description
  end

  def to_s
    if @url.nil?
      "  * #{@name}\n"
      elsif @description.nil?
        "  * [[#{@url}|#{@name}]]\n"
      else
        "  * [[#{@url}|#{@name}]] -- #{@description}\n"
      end
    end
  end

class Category
  attr_reader :name, :parent

  def initialize(name, parent: nil, &block)
    @name = name
    @parent = parent
    @children = []
    instance_eval(&block) if block_given?
  end

  def link(name, url, description = nil)
    @children << Link.new(name, url, description)
  end

  def category(name, &block)
    @children << Category.new(name, parent: self, &block)
  end

  # Depth: top-level category = 1, child = 2, etc.
  def level
    n = 1
    p = @parent
    while p
      n += 1
      p = p.parent
    end
    n
  end

  def sort!
    categories, links = @children.partition { |child| child.is_a?(Category) }
    @children.replace(links.sort_by { |link| link.name.downcase } + categories)
    categories.each(&:sort!)
  end

  def to_s
    lvl = level
    w = [7 - lvl, 1].max # don't go below 1 '='
    header = ("=" * w) + " #{@name} " + ("=" * w) + "\n"
    children_str = @children.map(&:to_s).join
    header + children_str
  end
end

class Links
  def initialize(&block)
    @categories = []
    instance_eval(&block) if block_given?
  end

  def category(name, &block)
    @categories << Category.new(name, parent: nil, &block)
  end

  def sort!
    @categories.each(&:sort!)
    self
  end

  def to_s
    @categories.map(&:to_s).join("\n")
  end
end

