(require 'ox)

(defun to-latex ()
  (org-latex-export-to-latex))

(defun to-html ()
  (let ((org-export-global-macros '((ch1 . "[[file:chapter1.html][$1]]"))))
    (org-html-export-to-html)))
