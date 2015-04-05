;;p
;;; キーバインドの設定
;;

;; ===================================================================

;; キーバインドの確認
;; 参考 http://d.hatena.ne.jp/mtsaggie/20081128/p2

;; キーバインド一覧を表示する
;; M-x describe-bindings
;; 使いたいキーバインドが利用されているかどうか確認する
;; M-x describe-key (確認したいキーバインド)

;; ===================================================================

;; Ctrl-x p で逆向きへのウィンドウ移動
(global-set-key (kbd "C-x p") (lambda () (interactive) (other-window -1)))



;; Undo( C-z )
(global-set-key (kbd "C-z") 'undo)


;; 切り取り( C-w )


;; コピー ( C-x w )
(global-set-key (kbd "C-x w") 'copy-region-as-kill)


;; 貼り付け( C-y )


;; shellを起動( C-c s )
(global-set-key (kbd"C-c s") 'shell)


;; eshellを起動( C-c s )
;; プロンプトを可愛くするカスタマイズが使えるようになったらこっちを使いたい
;; (global-set-key (kbd"C-c s") 'eshell)


;; C-c c で compile コマンドを呼び出す
(define-key mode-specific-map "c" 'compile)


;; M-/でredoする
(global-set-key (kbd "M-/") 'undo-tree-redo)


;; C-x b で anything-for-files を呼び出す
;;(global-set-key (kbd "C-x b") 'anything-for-files)


;; C-x b でhelm-for-files を呼び出す
(global-set-key (kbd "C-x b") 'helm-for-files)


;; C-c q で quickrun を呼び出す
(global-set-key (kbd "C-c q") 'quickrun)


;; C-x C-b で ibuffer を呼び出す
(global-set-key (kbd "C-x C-b") 'ibuffer)

;; C-x m で magit-status を呼び出す
(global-set-key (kbd "C-x m") 'magit-status)
