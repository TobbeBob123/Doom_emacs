(setq user-full-name "Tobias Os Finsbøl"
      user-mail-address "tobias.finsbol@gmail.com")

(setq doom-font (font-spec :family "Source Code Pro" :size 12)
      doom-variable-pitch-font (font-spec :family "Source Code Pro" :size 12)
      doom-big-font (font-spec :family "Source Code Pro" :size 24))
(after! doom-themes
  (setq doom-themes-enable-bold t
        doom-themes-enable-italic t))
(after! org
  (setq org-hide-emphasis-markers t))
(custom-set-faces!
  '(font-lock-comment-face :slant italic)
  '(font-lock-keyword-face :slant italic))

(setq doom-theme 'doom-dracula)

(setq display-line-numbers-type t)

(setq org-directory "~/org/")

(beacon-mode 1)

(map! :nv "C-c v" #'vterm
      :nv "C-c n" #'treemacs
      :nv "C-c b" #'buffer-menu
      :nv "C-c f d" #'dired-jump
      :nv "C-c d" #'dired
      :nv "C-c f v" #'+vterm/here
      :nv "C-c t" #'tldr
      :nv "C-c q" #'kill-emacs
      :nv "C-c l" #'clipboard-yank
      :nv "C-c c" #'clipboard-kill-ring-save
      :nv "C-c k" #'calc
      :nv "C-c w" #'eww)

(setq ispell-hunspell-add-multi-dic "en,nb")

(use-package dashboard
  :init
  (setq dashboard-set-heading-icons t)
  (setq dashboard-set-files-icons t)
  (setq dashboard-banner-logo-title "\nKEYBINDINGS:\
\nFind file               (SPC .)     \
Vterm                (C-c v)\
\nFind recent files       (SPC f r)   \
Vterm in fullscreen  (C-c f v)\
\nFile manager fullscreen (C-c f d)   \
File manager normal  (C-c d)")
  (setq dashboard-startup-banner "~/TobbeOS/TobbeOSPNG/Tobbeos.png")
  (setq dashboard-center-content nil)
  (setq dashboard-items '((recents . 5)
                          (agenda . 5 )
                          (bookmarks . 5)
                          (projects . 5))))
:config
(dashboard-setup-startup-hook)
(setq doom-fallback-buffer "*dashboard*")
(setq initial-buffer-choice (lambda () (get-buffer "*dashboard*")))

(setq-default truncate-lines nil)

(setq org-latex-pdf-process
      '("latexmk -pdflatex='pdflatex -interaction nonstopmode' -pdf -bibtex -f %f"))

(unless (boundp 'org-latex-classes)
  (setq org-latex-classes nil))

(add-to-list 'org-latex-classes
             '("ethz"
               "\\documentclass[a4paper,11pt,titlepage]{memoir}
\\usepackage[utf8]{inputenc}
\\usepackage[T1]{fontenc}
\\usepackage{fixltx2e}
\\usepackage{graphicx}
\\usepackage{longtable}
\\usepackage{float}
\\usepackage{wrapfig}
\\usepackage{rotating}
\\usepackage[normalem]{ulem}
\\usepackage{amsmath}
\\usepackage{textcomp}
\\usepackage{marvosym}
\\usepackage{wasysym}
\\usepackage{amssymb}
\\usepackage{hyperref}
\\usepackage{mathpazo}
\\usepackage{color}
\\usepackage{enumerate}
\\definecolor{bg}{rgb}{0.95,0.95,0.95}
\\tolerance=1000
      [NO-DEFAULT-PACKAGES]
      [PACKAGES]
      [EXTRA]
\\linespread{1.1}
\\hypersetup{pdfborder=0 0 0}"
               ("\\chapter{%s}" . "\\chapter*{%s}")
               ("\\section{%s}" . "\\section*{%s}")
               ("\\subsection{%s}" . "\\subsection*{%s}")
               ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
               ("\\paragraph{%s}" . "\\paragraph*{%s}")
               ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))


(add-to-list 'org-latex-classes
             '("article"
               "\\documentclass[11pt,a4paper]{article}
\\usepackage[utf8]{inputenc}
\\usepackage[T1]{fontenc}
\\usepackage{fixltx2e}
\\usepackage{graphicx}
\\usepackage{longtable}
\\usepackage{float}
\\usepackage{wrapfig}
\\usepackage{rotating}
\\usepackage[normalem]{ulem}
\\usepackage{amsmath}
\\usepackage{textcomp}
\\usepackage{marvosym}
\\usepackage{wasysym}
\\usepackage{amssymb}
\\usepackage{hyperref}
\\usepackage{mathpazo}
\\usepackage{color}
\\usepackage{enumerate}
\\definecolor{bg}{rgb}{0.95,0.95,0.95}
\\tolerance=1000
      [NO-DEFAULT-PACKAGES]
      [PACKAGES]
      [EXTRA]
\\linespread{1.1}
\\hypersetup{pdfborder=0 0 0}"
               ("\\section{%s}" . "\\section*{%s}")
               ("\\subsection{%s}" . "\\subsection*{%s}")
               ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
               ("\\paragraph{%s}" . "\\paragraph*{%s}")))


(add-to-list 'org-latex-classes '("ebook"
                                  "\\documentclass[11pt, oneside]{memoir}
\\setstocksize{9in}{6in}
\\settrimmedsize{\\stockheight}{\\stockwidth}{*}
\\setlrmarginsandblock{2cm}{2cm}{*} % Left and right margin
\\setulmarginsandblock{2cm}{2cm}{*} % Upper and lower margin
\\checkandfixthelayout
% Much more laTeX code omitted
"
                                  ("\\chapter{%s}" . "\\chapter*{%s}")
                                  ("\\section{%s}" . "\\section*{%s}")
                                  ("\\subsection{%s}" . "\\subsection*{%s}")))

(setq browse-url-browser-function 'eww-browse-url
      shr-use-colors nil
      shr-bullet "• "
      shr-folding-mode t
      eww-search-prefix "https://html.startpage.com/html?q="
      url-privacy-level '(email agent cookies lastloc)
      browse-url-secondary-browser-function 'browse-url-librewolf)
