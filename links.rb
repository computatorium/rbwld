require_relative "wld"

links = Links.new do
  category "learn" do
    category "courses & practice" do
      link "codewars", "https://www.codewars.com/", "coding challenges (kata). community-driven"
      link "exercism", "https://exercism.org/", "language practice with mentor feedback"
      link "hackerrank", "https://www.hackerrank.com/", "coding challenges and interview prep"
      link "leetcode", "https://leetcode.com/", "algorithms & data structures, interview-focused"
      link "ixl", "https://www.ixl.com/", "k–12 style drills, good for arithmetic"
      link "khan academy", "https://khanacademy.org", "structured courses across many subjects"
      link "mit ocw", "https://ocw.mit.edu/", "full university courses, mostly stem"
      link "roadmap.sh", "https://roadmap.sh/", "interactive learning paths for developers"
    end

    category "university" do
      link "CIS1940", "https://www.cis.upenn.edu/~cis1940/spring13/", "Spring '13 Haskell class @ Penn"
      link "Haskell MOOC", "https://haskell.mooc.fi/", "Univ. of Helsinki's free Haskell course. Great breadth"
    end

    category "books" do
      link "structure and interpretation of computer programs (sicp)", "https://mitpress.mit.edu/sites/default/files/sicp/index.html", "foundational computer science text"
      link "operating systems: three easy pieces (ostep)", "https://pages.cs.wisc.edu/~remzi/OSTEP/", "operating systems from the ground up"
    end

    category "language guides" do
      link "go by example", "https://gobyexample.com", "annotated go programs"
      link "learn you a haskell", "https://learnyouahaskell.github.io", "illustrated fp introduction"
      link "the rust book", "https://doc.rust-lang.org/book/", "official rust guide"
      link "real python", "https://realpython.com", "in-depth python tutorials"
    end
  end

  category "reference" do
    category "general" do
      link "wikipedia", "https://wikipedia.org", "the global encyclopedia"
      link "nlab", "https://ncatlab.org", "math, physics, philosophy; high theory"
    end

    category "web" do
      link "mdn", "https://developer.mozilla.org/en-US/", "html, css, and javascript docs"
      link "can i use", "https://caniuse.com", "browser support tables"
      link "css-tricks", "https://css-tricks.com", "modern css articles and guides"
      link "devdocs", "https://devdocs.io/", "offline-friendly documentation browser"
      link "markdown guide", "https://www.markdownguide.org/", "markdown syntax & usage"
      link "regex101", "https://regex101.com", "regex tester and explainer"
    end

    category "databases" do
      link "use the index luke", "https://use-the-index-luke.com/", "rdbms performance tips"
    end
  end

  category "programming" do
    category "general" do
      link "refactoring guru", "https://refactoring.guru", "design patterns & refactoring"
    end

    category "haskell" do
      link "hoogle", "https://hoogle.haskell.org/", "type-directed search engine for haskell"
      link "typeclassopedia", "https://wiki.haskell.org/Typeclassopedia", "practical guide to typeclasses"
    end

    category "go" do
      link "effective go", "https://go.dev/doc/effective_go", "official go idioms and style"
      link "pkg.go.dev", "https://pkg.go.dev/", "go standard library and package documentation"
    end

    category "rust" do
      link "crates.io", "https://crates.io/", "rust package registry"
      link "blessed.rs", "https://blessed.rs/", "curated list of recommended rust crates"
    end

    category "unix & cli" do
      link "tldr", "https://tldr.sh/", "simplified, example-driven man pages"
      link "die.net", "https://die.net/", "searchable unix man pages"
    end
  end

  category "build" do
    category "editors" do
      category "gui" do
        link "jetbrains ides", "https://www.jetbrains.com/ides/", "full-featured ides (free for students)"
      end

      category "cli" do
        link "gnu emacs", "https://www.gnu.org/software/emacs/", "extensible editor with lisp. mac users: [[https://emacsformacosx.com/]]"
        link "helix", "https://helix-editor.com/", "modern modal editor written in rust"
        link "neovim", "https://neovim.io/", "extended vim with lua support"
        link "vim", "https://www.vim.org/", "classic modal editor"
      end
    end

    category "converters & utilities" do
      link "realfavicongenerator", "https://realfavicongenerator.net", "favicon & app icon packaging"
      link "raycast code images", "https://ray.so", "generate nice code screenshots (see also [[https://carbon.now.sh|carbon]])"
    end
  end

  category "systems" do
    category "linux" do
      link "arch linux", "https://archlinux.org", "rolling release with excellent docs"
      link "nixos", "https://nixos.org/", "immutable, declarative linux"
      link "linux mint", "https://linuxmint.com/", "full desktop linux, the easy way (great for grandma)"
    end

    category "unix" do
      link "openbsd", "https://www.openbsd.org/", "secure bsd unix for servers and (less so) desktops"
      link "openindiana", "https://www.openindiana.org/", "illumos (Solaris) derived unix for desktops"
    end

    category "windows" do
      link "mas", "https://github.com/massgravel/Microsoft-Activation-Scripts", "recover a legitimate windows license (use carefully)"
    end
  end

  category "media" do
    category "trackers" do
      link "trackers", "trackers", ":)"
    end
  end

  category "meta" do
    category "unsorted" do
    end

    category "graveyard" do
      link "sites that bit the dust :(", nil, nil
    end
  end
end

puts links.sort!