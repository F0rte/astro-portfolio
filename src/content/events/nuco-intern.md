---
title: "株式会社Nuco インターン勤務"
date: 2024-04-01
---

# 技術スタック
- **AWS**: SageMaker (Training　Job), Lambda, Glue (Python Shell), EventBridge, CloudFormation
- **Data Engineering**: DuckDB, Polars, Pandas, SQL
- **DevOps/CI**: Docker, GitHub Actions, uv
- **Languages**: Python, SQL


# 概要
プログラミング未経験からITエンジニアを目指すために、インターン勤務を開始しました。  
2024年4月より勤務を開始し、2025年11月現在も勤務中です。  
機械学習システムのプロジェクトに参加し、改修タスクやエラーのデバッグ等、保守・運用を経験しました。

# 経験した開発の例
## データ分析
AWS GlueのETL Jobを使用してデータの集約・加工を行い、SageMaker Training Jobで分析や学習・推論を行うデータ分析のシステム  
分析のコード開発だけでなく、既に構築されたシステムに対するコスト・時間の最適化タスクにも取り組んだ  

### ETLの並列処理化
データの集約を行っていたGlue ETL Jobを並列処理化し、ジョブの実行時間の短縮
- Pythonのmultiprocessingモジュールで並列処理化

### データウェアハウスで行っていた集計処理をPythonの処理に変更
データウェアハウスでSQLクエリを叩いて行っていた集計処理を、Pythonで行う処理に変更しコスト削減
- データウェアハウスに集約していたデータを、duckdb(インメモリ)に集約する改修
- データ結合・集計処理をPandasやPolarsを使用する処理に変更

## クラウドインフラ開発
SageMaker Training JobのコードはDockerでビルドしてECRにデプロイして動かしている  
改修を通してDockerの経験が得られた  
CloudFormationを用いたIaCの実装・改修も行った

### pipをuvに移行
ライブラリ管理をuvで行うように変更
- Dockerfileをuv仕様に変更
- CIにRuffを用いたコードのlint, format

### CodeCommitをGitHubに移管
CodeCommit廃止発表を受け、GitHub移管とアーキテクチャ改善を開始
- AIコードエージェントを用いてREADME作成など、ドキュメント整備
- CI/CDをCodePipelineとCodeBuild仕様からGitHub Actionsへ移行
