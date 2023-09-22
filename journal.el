(defun create-journal-entry ()
  (let ((filename (format-time-string "%d%b%y.org")))
    (find-file (concat journal-dir filename))))
