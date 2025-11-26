---
title: "Progateハッカソン powered by ProjectLINKS & AWS 2025.09"
date: 2025-09-13
---

## 技術スタック
- **Languages**: TypeScript, Python, PostgreSQL
- **AWS**: RDS, Amazon Bedrock, Amplify, Amazon Location service

## 概要
Event link: https://progate.connpass.com/event/362453/  
Progateハッカソンで**最優秀賞**と**LINKS賞**(企業賞)を受賞した  
ProjectLINKSのオープンデータを使用するハッカソンで、AWS環境も提供された  
自動車運送事業の事故報告書のオープンデータを活用し、ネガティブな道案内アプリの開発を行った  
今回は3人チームで、アプリ開発・AIエージェント開発・オープンデータ処理で担当を分かれて実装した
提供されたAWSアカウントにデプロイを行ったため、現在はデプロイされていない

- Topa'z(発表資料): https://topaz.dev/projects/dba0ed4196dcd756b6de
- GitHub Repository(ETL): https://github.com/2509-progate-aws-hackathon/etl-job

## 経験した開発
オープンデータ処理を担当した  
事前開発期間ではAWSアカウントが提供されていなかったため、動作確認が行えず、当日GitHubに実装したコードは使用しなかった  
GitHubには、Lambda(Python)でオープンデータを加工・取得、RDSへ格納するジョブをCFnとCI/CD(GitHub Actions)で自動デプロイされるコード開発を行っていたが、インフラ（ネットワーク）に関する知識不足により、LambdaとRDSの接続ができなかった  
当日は、SageMaker notebookインスタンス(JupyterLab)上でオープンデータの処理を行い、EC2からRDSに接続してデータ格納を行った  
GitHubに上げたコードにあるように、pandasでオープンデータを整形し、PostgreSQLのクエリでRDSに格納している  
また、Amazon Bedrockを活用し、各行に対しタイトルと概要説明のカラムを追加するためのプロンプトを叩いた  
当日使用したプロンプトとSQLクエリの一部は、Topa'zの`データ処理`セクションに記載している
