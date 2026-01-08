.PHONY: help up down halt destroy ssh status reload provision update

help: ## このヘルプメッセージを表示
	@echo "利用可能なコマンド:"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[36m%-15s\033[0m %s\n", $$1, $$2}'

up: ## 仮想マシンを起動（初回はboxをダウンロード）
	vagrant up

down: ## 仮想マシンを停止
	vagrant halt

halt: ## 仮想マシンを停止（downと同じ）
	vagrant halt

destroy: ## 仮想マシンを削除
	@echo "警告: 仮想マシンを完全に削除します。よろしいですか？ [y/N]"
	@read -r confirm && [ "$$confirm" = "y" ] && vagrant destroy -f || echo "キャンセルしました"

ssh: ## 仮想マシンにSSH接続
	vagrant ssh

status: ## 仮想マシンの状態を確認
	vagrant status

reload: ## 仮想マシンを再起動（設定変更を反映）
	vagrant reload

provision: ## プロビジョニングを実行
	vagrant provision

update: ## boxを最新版に更新
	vagrant box update

suspend: ## 仮想マシンを一時停止
	vagrant suspend

resume: ## 一時停止した仮想マシンを再開
	vagrant resume

