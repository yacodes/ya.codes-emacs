#!/usr/bin/env emacs --script --quick

(require 'package)
(package-initialize)

;; Require modes used for syntax highlighting of code examples
;; (require 'clojure-mode)
;; (require 'scala-mode)
;; (require 'cc-mode)
;; (require 'sh-script)

;; Require org export
(require 'ox)

(setq project-path (file-name-directory
                    (or (buffer-file-name)
                        load-file-name))

      ;; Avoid foo~ backup files everywhere
      backup-directory-alist `(("." . ,(concat user-emacs-directory "backups")))

      ;; For now deploy side-by-side, since I cannot figure out how to
      ;; simulate a Jekyll site so it will deploy from _site :-(
      publish-path project-path ;; (concat project-path "_site/")

      org-html-doctype "html5"

      org-export-with-inlinetasks nil
      org-export-with-section-numbers nil
      org-export-with-smart-quotes t
      org-export-with-statistics-cookies nil
      org-export-with-toc nil
      org-export-with-tasks nil

      ;; HTML settings
      org-html-divs '(
                      (preamble "header" "top")
                      (content "main" "content")
                      (postamble "footer" "postamble"))

      org-html-container-element "section"
      org-html-metadata-timestamp-format "%Y-%m-%d"
      org-html-checkbox-type 'html
      org-html-html5-fancy t
      org-html-scripts nil
      org-html-preamble nil
      org-html-postamble nil
      org-html-htmlize-output-type 'css
      org-html-head-include-default-style t
      org-html-head-include-scripts t

      org-html-home/up-format "" ;; Navigation and logo

      org-html-head (concat "") ;; Meta

      org-html-style-default ""
      org-html-scripts "" ;; Scripts

      org-html-link-home "/"
      org-html-link-up "/"
      org-html-head (concat "<link rel=\"stylesheet\" href=\"/styles.css\">")

      org-export-with-toc nil
      org-export-with-author nil
      org-export-with-email nil
      org-export-with-creator nil
      org-export-with-section-numbers nil

      org-html-preamble nil
      org-html-postamble nil
      org-export-with-creator nil

      org-publish-project-alist
      `(
        ("e"
         :base-directory ,(concat project-path ".")
         :publishing-directory ,(concat publish-path "build/e")
         :publishing-function org-html-publish-to-html
         :recursive t
         :auto-sitemap nil)))

(org-publish-all t)
