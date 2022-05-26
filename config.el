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

(setq org-directory "~/org")

(beacon-mode 1)

(map! :nv "C-c v" #'vterm
      :nv "C-c n" #'neotree
      :nv "C-c b" #'buffer-menu
      :nv "C-c d d" #'dired-jump
      :nv "C-c f v" #'+vterm/here
      :nv "C-c q" #'kill-emacs)

(setq ispell-hunspell-add-multi-dic "nb, en")

(use-package dashboard
  :init
  (setq dashboard-set-heading-icons t)
  (setq dashboard-set-files-icons t)
  (setq dashboard-banner-logo-title "\nKEYBINDINGS:\
\nFind file               (SPC .)     \
\nFind recent files       (SPC f r)   \
Vterm                (C-c f v)\
\nOpen file manager       (C-c d d)   \
Org-agenda           (SPC o A)")
  (setq dashboard-startup-banner "~/TobbeOS/Tobbeos.png")
  (setq dashboard-center-content nil))
:config
(dashboard-setup-startup-hook)
(setq doom-fallback-buffer "*dashboard*")
