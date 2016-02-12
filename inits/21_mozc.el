;;
;;; mozc.elの設定
;;

;; ===================================================================

;; 【参考】Emacs:mozcで日本語入力
;; http://compress.hatenadiary.com/entry/2014/02/24/001932

;; ===================================================================

;; ==================================================================

;; 【参考】emacs-mozc を動かすための設定（emacs 設定編）
;; http://www49.atwiki.jp/ntemacs/pages/48.html

;; ===================================================================

(el-get-bundle mozc)

(use-package mozc
  :defer t
  :init
  (setq default-input-method "japanese-mozc")
  (add-hook 'mozc-mode-hook
	    (lambda()
	      (define-key mozc-mode-map (kbd "<zenkaku-hankaku>") 'toggle-input-method)))
  
  ;; minibuffer に入った時、IME を OFF にする
  (add-hook 'minibuffer-setup-hook
	    (lambda ()
	      ;; isearch の中でなければ input-method を無効にする（他に良い判定方法があれば、変更してください）
	      (unless (memq 'isearch-done kbd-macro-termination-hook)
		(deactivate-input-method))))
  
  :bind
  ("<zenkaku-hankaku>" . toggle-input-method))



(el-get-bundle mozc-popup)

(use-package mozc-popup
  :config
  ;; 変換候補をポップアップで表示させるようにする
  (setq mozc-candidate-style 'popup))



(el-get-bundle iRi-E/mozc-el-extensions)

(use-package mozc-cursor-color
  :config
  ;; カーソルの色の設定
  (setq mozc-cursor-color-alist
	'((direct . "yellow")
	  (read-only . "lime green")
	  (hiragana . "dark orange")
	  (full-katakana . "goldenrod")
	  (half-ascii . "dark orchid")
	  (full-ascii . "orchid")
	  (half-katakana . "dark goldenrod")))
    
  (use-package mozc-mode-line-indicator)
  (use-package mozc-isearch
    :disabled t)
  )