# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "generic/debian12"
  
  # 最新のboxを常に取得
  config.vm.box_check_update = true
  
  # 仮想マシンの設定
  config.vm.provider "virtualbox" do |vb|
    # メモリ設定（必要に応じて調整）
    vb.memory = "8192"
    # CPU設定（必要に応じて調整）
    vb.cpus = 4
    # GUIを無効化（必要に応じて有効化可能）
    vb.gui = false
  end
  
  # ホスト名の設定
  config.vm.hostname = "freepbx-debian12"
  # config.vm.hostname = "freepbx-debian12"
  
  # ネットワーク設定
  # 443ポート（HTTPS）のフォワーディング
  # ホスト側の8443ポートをゲスト側の443ポートに転送
  # 必要に応じて host: 8443 を host: 443 に変更可能（root権限が必要な場合あり）
  # config.vm.network "forwarded_port", guest: 443, host: 8443, host_ip: "127.0.0.1"
  # config.vm.network "forwarded_port", guest: 5060, host: 5060, host_ip: "127.0.0.1"
  
  # 80ポート（HTTP）のフォワーディング（必要に応じて有効化）
  # config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"
  
  # プライベートネットワーク（必要に応じて有効化）
  # config.vm.network "private_network", ip: "192.168.33.10"
  config.vm.network "private_network", ip: "192.168.56.21"
  
  # プロビジョニング（必要に応じて追加）
  # config.vm.provision "shell", inline: <<-SHELL
  #   apt-get update
  #   apt-get upgrade -y
  # SHELL
end

