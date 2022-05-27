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
      :nv "C-c n" #'treemacs
      :nv "C-c b" #'buffer-menu
      :nv "C-c f d" #'dired-jump
      :nv "C-c d" #'dired
      :nv "C-c f v" #'+vterm/here
      :nv "C-c q" #'kill-emacs
      :nv "C-c l" #'clipboard-yank
      :nv "C-c c" #'clipboard-kill-ring-save)

(setq ispell-hunspell-add-multi-dic "nb,en")

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
  (setq dashboard-center-content nil))
:config
(dashboard-setup-startup-hook)
(setq doom-fallback-buffer "*dashboard*")

(setq-default truncate-lines nil)
