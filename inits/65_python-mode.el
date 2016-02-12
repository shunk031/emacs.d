;;
;;; python-mode.elの設定
;;

;; ===================================================================

;;; 【参考】はむかず！PythonプログラミングのためのEmacs設定
;; http://hamukazu.com/2014/12/05/setting-emacs-for-python/

;; ~/.local/binにPATHを通しておく
;; PATHが通ってるかどうかを確認するのは
;; ElpyのConfigureで見ることができる

;; ===================================================================

(el-get-bundle py-autopep8)
(use-package py-autopep8
  :defer t
  :commands py-autopep8-enable-on-save
  
  :init
  (add-hook 'python-mode-hook 'py-autopep8-enable-on-save))

;; ===================================================================

;; 【参考】https://github.com/jorgenschaefer/elpy/issues/439
;; Elpy以外のところからダウンロードしてきたものは
;; エラーが出るかもしれない

;; ===================================================================

(el-get-bundle elpy)
(use-package elpy
  :defer t
  :config
  (elpy-enable))

;; ===================================================================

;; 【参考】Emacsの上にも3年
;; http://ksknw.hatenablog.com/entry/2015/02/11/202320

;; ===================================================================

(add-hook 'python-mode-hook
	  '(lambda ()
	     ;;
	     ;; companyの補完をC-n,C-pで選択できるようにする
	     ;;
              (define-key company-active-map (kbd "\C-n") 'company-select-next)
              (define-key company-active-map (kbd "\C-p") 'company-select-previous)
	      ;;
	      ;; companyとの衝突を防ぐためにauto-completeをOFFに
	      ;;
              ;; (auto-complete-mode -1)
              ))


;; elpy 色の設定 デフォルトは黄色でダサいのでauto-complete風に変更
(setq company-minimum-prefix-length 1)
(setq company-selection-wrap-around t)

(custom-set-faces
 '(company-scrollbar-bg ((t (:inherit company-tooltip :background "#c0c0c0"))))
 '(company-scrollbar-fg ((t (:background "limegreen"))))
 '(company-tooltip ((t (:background "#c0c0c0" :foreground "black"))))
 '(company-tooltip-annotation ((t (:inherit company-tooltip :foreground "black"))))
 '(company-tooltip-common ((t (:inherit company-tooltip :foreground "black"))))
 '(company-tooltip-common-selection ((t (:inherit company-tooltip-selection :foreground "black"))))
 '(company-tooltip-selection ((t (:background "limegreen" :foreground "white"))))
 )

;; ===================================================================

;; 【参考】EmacsでPython開発するための環境を整える
;; http://nakazye.hatenablog.com/entry/2014/09/14/161154

;; ===================================================================

(defun python-shell-parse-command ()
  "Return the string used to execute the inferior Python process."
  "python3 -i")



(el-get-bundle virtualenvwrapper)

(use-package virtualenvwrapper
  :disabled t
  
  :defer t
  :config
  (venv-initialize-interactive-shells) ;; if you want interactive shell support
  (venv-initialize-eshell) ;; if you want eshell support
  )
