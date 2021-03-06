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
  (define-skeleton my-org-tangle
    "Template for org-mode"
    "My config"
    "#+author: Tobias Os Finsbøl" \n
    "#+property: header-args :tangle")

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
      :nv "C-c o" #'my-org-tangle)

(setq ispell-change-dictionary "en_US")

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
  (setq dashboard-startup-banner "~/TobbeOS/Tobbeos.png")
  (setq dashboard-center-content nil)
  (setq dashboard-items '((recents . 5)
                          (agenda . 5 )
                          (bookmarks . 5)
                          (projects . 5))))
:config
(dashboard-setup-startup-hook)
(setq doom-fallback-buffer "*dashboard*")

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

(setq doom-modeline-icon t)
(setq doom-modeline-major-mode-icon t)
(setq doom-modeline-major-mode-color-icon t)
