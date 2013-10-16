;;; lychee-theme.el --- chee's light emacs 24_ theme.

;; version 1
;; keywords: deftheme theme
;; author: chee <chee@snaek.org>
;; url: snaek.org/resources/lychee-theme.el

;; this isn't part of gnu emacs

;; this program is free software; you can redistribute it and/or modify
;; it under the terms of gnu general public licence as published by the
;; free software foundation; either version 2, or (at your option) any
;; later version.

;; this program is distributed in the hope that it will be useful, but
;; without any warranty; without even the implied warranty of
;; merchantability or fitness for a particular purpose. see the gnu
;; general public licence for more details.

;; you should have received a copy of the gnu general public licence
;; along with this program; if not, write to the free software
;; foundation, inc., 675 mass ave, cambridge, ma 02139, usa.
;; or go here lol https://www.gnu.org/copyleft/gpl.html

;; code:

(deftheme lychee "chee -- i love you and colours")
(defvar lychee/colors
  '(("background" . "#ddeeff")
    ("foreground" . "#086F8A")
    ("hot"        . "#ee046f")
    ("subtle"     . "#bbccdd")
    ("subtle2"    . "#8899aa")
    ("mint"       . "#205B46")
    ("lymint"     . "#96E8CB")
    ("uhoh"       . "#F12D00")
    ("wishy"      . "#333333")
    ("function"   . "#DB4E80")
    ("type"       . "#0CADD6")
    ("variable"   . "#E85B3A")
    ("myeyes"     . "#9E3430")
    ("sky"        . "#3999FF"))
  "colours for lychee-theme")
;; thanks to bbatsov for this macro
(defmacro lychee/with-colors (&rest body)
  "lets bind colors"
  (declare (indent 0))
  `(let ((class '((class color) (min-colors 89)))
         ,@(mapcar (lambda (cons)
                     (list (intern (car cons)) (cdr cons)))
                   lychee/colors))
     ,@body))

(lychee/with-colors
 (custom-theme-set-faces
  'lychee
  `(default
     ((t (:foreground ,foreground :background ,background))))

  `(cursor
    ((t (:foreground "white" :background ,hot))))

  `(font-lock-builtin-face
    ((t (:foreground ,hot))))

  `(font-lock-comment-delimiter-face
    ((t (:foreground ,subtle2))))

  `(font-lock-comment-face
    ((t (:foreground ,subtle2 :family "sans-serif" :slant italic))))

  `(font-lock-constant-face
    ((t (:foreground ,wishy))))

  `(font-lock-doc-face
    ((t (:foreground ,wishy :slant italic))))

  `(font-lock-function-name-face
    ((t (:foreground ,function))))

  `(font-lock-keyword-face
    ((t (:foreground ,myeyes))))

  `(font-lock-negation-char-face
    ((t (:foreground ,uhoh))))

  `(font-lock-preprocessor-face
    ((t (:foreground ,sky))))

  `(font-lock-regexp-grouping-backslash
    ((t (:bold   t
                 :weight bold))))

  '(font-lock-regexp-grouping-construct
    ((t (:bold   t
                 :weight bold))))

  `(font-lock-string-face
    ((t (:foreground ,mint :background ,lymint))))

  `(font-lock-type-face
    ((t (:foreground ,type))))

  `(font-lock-variable-name-face
    ((t (:foreground ,variable))))

  `(font-lock-warning-face
    ((t (:bold       t
                     :foreground ,uhoh
                     :weight     bold))))

  `(fringe
    ((t (:background ,background))))

  '(header-line
    ((t (:background "#303636"
                     :foreground "#eee"))))

  `(mode-line
    ((t (:inherit    'fringe
                     :foreground "#ccc"
                     :background ,subtle2
                     :box        ,subtle))))

  '(mode-line-inactive
    ((t (:inherit    'mode-line
                     :box        nil))))

  '(mode-line-highlight
    ((t (:box        "#abb4a1"
                     :background "#012"))))

  `(mode-line-buffer-id
    ((t (:foreground ,hot))))

  `(show-paren-match
    ((t (:background ,foreground
                     :foreground ,background))))

  '(show-paren-mismatch
    ((t (:background "#FA2573"))))

  `(minibuffer-prompt
    ((t (:foreground ,hot))))

  `(highlight
    ((t (:background ,subtle))))

  `(hl-line
    ((t (:background ,subtle))))

  `(linum
    ((t (
      :inherit    (shadow default background)
      :foreground ,subtle2
      :slant      oblique
      :height     0.94))))

  `(region
    ((t (:background ,hot))))

  '(trailing-whitespace
    ((t (:bold       t
                     :background "#571C0E"
                     :foreground "#331C10"
                     :weight     bold))))

  ;;
  ;; ISearch
  ;;
  `(isearch
    ((t (:background ,foreground
                     :box "white"))))

  `(isearch-fail
    ((t (:background "#382323"
                     :foreground ,uhoh))))

  ;;
  ;; Twittering mode
  ;;
  '(twittering-uri-face
    ((t (:foreground "#729FCF"))))

  '(twittering-username-face
    ((t (:foreground "#FC951E"
                     :bold t))))

  ;;
  ;; Usual UI stuffs
  ;;
  `(widget-field
    ((t (:background ,foreground :foreground "white"))))

  '(custom-group-tag-face
    ((t (:bold       t
                     :foreground "#67D9F0"
                     :weight      bold
                     :height      1.2))))

  '(custom-variable-tag-face
    ((t (:bold t
               :foreground "#729FCF"
               :weight bold))))

  '(custom-state-face
    ((t (:foreground "#A6E32D"))))

  '(link
    ((t (:foreground "#729FCF"
                     :underline nil))))

  ;;
  ;; JS2 stuff
  ;;
  `(js2-function-param-face
    ((t (:foreground ,variable))))

  '(js3-function-param-face
    ((t (:inherit 'js2-function-param-face))))

  ;;
  ;; Diff
  ;;
  '(diff-added
    ((t (:foreground "#A6E32D"))))

  '(diff-changed
    ((t (:foreground "#67D9F0"))))

  '(diff-removed
    ((t (:foreground "#FA2573"))))

  '(diff-header
    ((t (:background "#555753"))))

  '(diff-file-header
    ((t (:bold t
               :background "#555753"
               :weight bold))))

  '(diff-context
    ((t (:foreground "#EEEEEE"))))


  ;;
  ;; Whitespace mode
  ;;
  `(whitespace-indentation
    ((t (:background ,background
                     :foreground "#82996A"))))

  `(whitespace-line
    ((t (:background ,background
                     :foreground "#7A6D89"))))

  `(whitespace-newline
    ((t (:foreground ,background
                     :weight normal))))

  `(whitespace-space
    ((t (:background ,background
                     :foreground ,background))))

  `(whitespace-tab
    ((t (:background ,background
                     :foreground ,background))))

  '(whitespace-space-after-tab
    ((t (:background "#303636"
                     :foreground "#82996A"))))

  '(whitespace-space-before-tab
    ((t (:background "#382323"
                     :foreground "#82996A"))))

  '(whitespace-trailing
    ((t (:inherit 'trailing-whitespace))))

  '(whitespace-empty
    ((t (:background "#382323"
                     :foreground "#624935"))))

  '(whitespace-hspace
    ((t (:background "#382323"
                     :foreground "#82996A"))))

  ;;
  ;; Flyspell stuff
  ;;
  '(flyspell-duplicate
    ((t (:background "#382323"
                     :underline  "#FC951E"
                     :bold        t))))

  '(flyspell-incorrect
    ((t (:background "#382323"
                     :underline "#E52222"
                     :bold t))))

  ;;
  ;; ERC
  ;;
  '(erc-notice-face
    ((t (:foreground "#75766A"))))

  '(erc-current-nick-face
    ((t (:foreground "#FA2573"))))

  '(erc-input-face
    ((t (:foreground "#ABB4A1"))))

  '(erc-nick-default-face
    ((t (:foreground "#729FCF"))))

  '(erc-prompt-face
    ((t (:foreground "#FC951E"
                     :background nil))))

  '(erc-timestamp-face
    ((t (:foreground "#75766A"))))

  ;;
  ;; ReStructuredText
  ;;
  '(rst-level-1-face
    ((t (:foreground "#729FCF"
                     :background nil
                     :bold t))))

  '(rst-level-2-face
    ((t (:inherit 'rst-level-1-face))))

  '(rst-level-3-face
    ((t (:inherit 'rst-level-2-face))))

  '(rst-level-4-face
    ((t (:inherit 'rst-level-3-face))))

  '(rst-level-5-face
    ((t (:inherit 'rst-level-4-face))))

  '(rst-level-6-face
    ((t (:inherit 'rst-level-5-face))))

  ;;
  ;; Outline
  ;;
  '(outline-1
    ((t (:foreground "#437BA5"))))
  '(outline-2
    ((t (:foreground "#729bb6"))))
  '(outline-3
    ((t (:foreground "#a2bcc8"))))
  '(outline-4
    ((t (:foreground "#d1dcd9"))))
  '(outline-5
    ((t (:foreground "#437ba5"))))
  '(outline-6
    ((t (:foreground "#729bb6"))))
  '(outline-7
    ((t (:foreground "#a2bcc8"))))
  '(outline-8
    ((t (:foreground "#d1dcd9"))))

  ;;
  ;; ORG Mode
  ;;
  '(org-hide
    ((t (:foreground "#303636"))))
  '(org-special-keyword
    ((t (:inherit 'font-lock-type-face))))

  ;;
  ;; Perspective mode
  ;;
  '(persp-selected-face
    ((t (:foreground "#eeeeee"
                     :background "#382323"
                     :box        "#382323"))))
  ;;
  ;; Yasnippet
  ;;
  '(yas/field-highlight-face
    ((t (:background "#586045"
                     :box "#ACAE95"))))))
;;; chee-theme.el --- chee's emacs 24_ theme.

;; version 1
;; keywords: deftheme theme
;; author: chee <chee@snaek.org>
;; url: snaek.org/resources/chee-theme.el

;; this isn't part of gnu emacs

;; this program is free software; you can redistribute it and/or modify
;; it under the terms of gnu general public licence as published by the
;; free software foundation; either version 2, or (at your option) any
;; later version.

;; this program is distributed in the hope that it will be useful, but
;; without any warranty; without even the implied warranty of
;; merchantability or fitness for a particular purpose. see the gnu
;; general public licence for more details.

;; you should have received a copy of the gnu general public licence
;; along with this program; if not, write to the free software
;; foundation, inc., 675 mass ave, cambridge, ma 02139, usa.
;; or go here lol https://www.gnu.org/copyleft/gpl.html

;; code:

(deftheme chee "chee -- i love you and colours")
(defvar chee/colors
  '(("background" . "#021d24")
    ("foreground" . "#086F8A")
    ("hot"        . "#ee046f")
    ("subtle"     . "#043340")
    ("subtle2"    . "#06485A")
    ("mint"       . "#0ACB87")
    ("mustard"    . "#D7C500")
    ("uhoh"       . "#F12D00")
    ("wishy"      . "#fafaee")
    ("function"   . "#DB4E80")
    ("type"       . "#0CADD6")
    ("variable"   . "#ACAD82")
    ("myeyes"     . "#D1453F")
    ("sky"        . "#3999FF"))
  "colours for lychee-theme")
;; thanks to bbatsov for this macro
(defmacro chee/with-colors (&rest body)
  "lets bind colors"
  (declare (indent 0))
  `(let ((class '((class color) (min-colors 89)))
         ,@(mapcar (lambda (cons)
                     (list (intern (car cons)) (cdr cons)))
                   chee/colors))
     ,@body))

(chee/with-colors
 (custom-theme-set-faces
  'chee
  `(default
     ((t (:foreground ,foreground :background ,background))))

  `(cursor
    ((t (:foreground "white" :background ,hot))))

  `(font-lock-builtin-face
    ((t (:foreground ,hot))))

  `(font-lock-comment-delimiter-face
    ((t (:foreground ,subtle2))))

  `(font-lock-comment-face
    ((t (:foreground ,subtle2 :family "sans-serif" :slant italic))))

  `(font-lock-constant-face
    ((t (:foreground ,wishy))))

  `(font-lock-doc-face
    ((t (:foreground ,mustard))))

  `(font-lock-function-name-face
    ((t (:foreground ,function))))

  `(font-lock-keyword-face
    ((t (:foreground ,myeyes))))

  `(font-lock-negation-char-face
    ((t (:foreground ,uhoh))))

  `(font-lock-preprocessor-face
    ((t (:foreground ,sky))))

  `(font-lock-regexp-grouping-backslash
    ((t (:bold   t
                 :weight bold))))

  '(font-lock-regexp-grouping-construct
    ((t (:bold   t
                 :weight bold))))

  `(font-lock-string-face
    ((t (:foreground ,mint))))

  `(font-lock-type-face
    ((t (:foreground ,type))))

  `(font-lock-variable-name-face
    ((t (:foreground ,variable))))

  `(font-lock-warning-face
    ((t (:bold       t
                     :foreground ,uhoh
                     :weight     bold))))

  `(fringe
    ((t (:background ,background))))

  '(header-line
    ((t (:background "#444340"
                     :foreground "#eee"))))

  `(mode-line
    ((t (:inherit    'fringe
                     :foreground "ccc"
                     :background ,subtle2
                     :box        ,subtle))))

  '(mode-line-inactive
    ((t (:inherit    'mode-line
                     :box        nil))))

  `(mode-line-highlight
    ((t (:box        ,wishy
                     :background "#012"))))

  `(mode-line-buffer-id
    ((t (:foreground ,hot))))

  `(show-paren-match
    ((t (:background ,foreground
                     :foreground ,background))))

  `(show-paren-mismatch
    ((t (:background ,hot))))

  `(minibuffer-prompt
    ((t (:foreground ,hot))))

  `(highlight
    ((t (:background ,subtle))))

  `(hl-line
    ((t (:background ,subtle))))

  `(linum
    ((t (
      :inherit    (shadow default background)
      :foreground ,subtle2
      :slant      oblique
      :height     0.94))))

  `(region
    ((t (:background ,hot))))

  '(trailing-whitespace
    ((t (:bold       t
                     :background "#571C0E"
                     :foreground "#331C10"
                     :weight     bold))))

  ;; isearcg
  `(isearch
    ((t (:background ,foreground
                     :box "white"))))

  `(isearch-fail
    ((t (:background "#382323"
                     :foreground ,uhoh))))

  ;; twittering
  `(twittering-uri-face
    ((t (:foreground ,sky))))

  '(twittering-username-face
    ((t (:foreground "#44ff66"
                     :bold t))))

  ;; widg
  `(widget-field
    ((t (:background ,foreground :foreground "white"))))

  `(custom-group-tag-face
    ((t (:bold       t
                     :foreground ,sky
                     :weight      bold
                     :height      1.2))))

  '(custom-variable-tag-face
    ((t (:bold t
               :foreground "#729FCF"
               :weight bold))))

  `(custom-state-face
    ((t (:foreground ,mint))))

  '(link
    ((t (:foreground "#729FCF"
                     :underline nil))))

  ;; js2/3
  `(js2-function-param-face
    ((t (:foreground ,variable))))

  '(js3-function-param-face
    ((t (:inherit 'js2-function-param-face))))

  ;; diffs
  `(diff-added
    ((t (:foreground ,mint)))

  '(diff-changed
    ((t (:foreground "#4499cc"))))

  `(diff-removed
    ((t (:foreground ,hot)))

  '(diff-header
    ((t (:background "#55505f"))))

  '(diff-file-header
    ((t (:bold t
               :background "#555753"
               :weight bold))))

  '(diff-context
    ((t (:foreground "#EEEEEE"))))


  ;; whitespace mode
  `(whitespace-indentation
    ((t (:background ,background
                     :foreground "#82996A"))))

  `(whitespace-line
    ((t (:background ,background
                     :foreground "#766660"))))

  `(whitespace-newline
    ((t (:foreground ,background
                     :weight normal))))

  `(whitespace-space
    ((t (:background ,background
                     :foreground ,background))))

  `(whitespace-tab
    ((t (:background ,background
                     :foreground ,background))))

  '(whitespace-space-after-tab
    ((t (:background "#303636"
                     :foreground "#82996A"))))

  '(whitespace-space-before-tab
    ((t (:background "#382323"
                     :foreground "#82996A"))))

  '(whitespace-trailing
    ((t (:inherit 'trailing-whitespace))))

  '(whitespace-empty
    ((t (:background "#382323"
                     :foreground "#624935"))))

  '(whitespace-hspace
    ((t (:background "#382323"
                     :foreground "#82996A"))))

  ;; flyspell
  '(flyspell-duplicate
    ((t (:background "#382323"
                     :underline  "#cCc51E"
                     :bold        t))))

  '(flyspell-incorrect
    ((t (:background "#382323"
                     :underline "#c12232"
                     :bold t))))

  ;; erc
  '(erc-notice-face
    ((t (:foreground "#75766A"))))

  `(erc-current-nick-face
    ((t (:foreground ,sky))))

  '(erc-input-face
    ((t (:foreground "#ABB4A1"))))

  '(erc-nick-default-face
    ((t (:foreground "#729FCF"))))

  `(erc-prompt-face
    ((t (:foreground ,hot                     :background nil))))

  '(erc-timestamp-face
    ((t (:foreground "#75766A"))))

  ;; rst?
  '(rst-level-1-face
    ((t (:foreground "#729FCF"
                     :background nil
                     :bold t))))

  '(rst-level-2-face
    ((t (:inherit 'rst-level-1-face))))

  '(rst-level-3-face
    ((t (:inherit 'rst-level-2-face))))

  '(rst-level-4-face
    ((t (:inherit 'rst-level-3-face))))

  '(rst-level-5-face
    ((t (:inherit 'rst-level-4-face))))

  '(rst-level-6-face
    ((t (:inherit 'rst-level-5-face))))

  ;; outlines / org
  '(outline-1
    ((t (:foreground "#437BA5"))))
  '(outline-2
    ((t (:foreground "#729bb6"))))
  '(outline-3
    ((t (:foreground "#a2bcc8"))))
  '(outline-4
    ((t (:foreground "#d1dcd9"))))
  '(outline-5
    ((t (:foreground "#437ba5"))))
  '(outline-6
    ((t (:foreground "#729bb6"))))
  '(outline-7
    ((t (:foreground "#a2bcc8"))))
  '(outline-8
    ((t (:foreground "#d1dcd9"))))
  '(org-hide
    ((t (:foreground "#303636"))))
  '(org-special-keyword
    ((t (:inherit 'font-lock-type-face))))

  ;; persp
  '(persp-selected-face
    ((t (:foreground "#eeeeee"
                     :background "#382323"
                     :box        "#382323"))))
  ;;
  '(yas/field-highlight-face
    ((t (:background "#586045"
                     :box "#ACAE95"))))))))