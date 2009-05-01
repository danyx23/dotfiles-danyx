
(custom-set-variables
 '(haskell-program-name "ghci")) 

(add-hook 'haskell-mode-hook
          (lambda ()
            (require 'inf-haskell)
            (turn-on-haskell-doc-mode)
            (turn-on-haskell-indent)
            (turn-on-haskell-font-lock)
            (turn-on-haskell-decl-scan)))

(require 'hs-lint)
(defun my-haskell-mode-hook ()
   (local-set-key "\C-cl" 'hs-lint))
(add-hook 'haskell-mode-hook 'my-haskell-mode-hook)
