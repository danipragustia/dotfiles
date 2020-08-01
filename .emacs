(menu-bar-mode -1)
(setq auto-save-default nil)
(setq create-lockfiles nil)
(setq inhibit-startup-screen t)

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)
(custom-set-variables
 '(package-selected-packages (quote (web-mode))))
