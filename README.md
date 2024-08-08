初期構築手順    
1.tfstateファイル(Terraformの構成管理をするファイル)用のS3バケットを手動で作成    
2.tfbackendファイルのバケット名を作成したバケット名に変更する    
3.以下のコマンドでinit    
terraform init -reconfigure -backend-config=tfbackend    
    
4.以下のコマンドでplan(適用内容の確認)、apply(実機適用)    
terraform plan -var-file=dev.tfvars    
terraform apply -var-file=dev.tfvars    