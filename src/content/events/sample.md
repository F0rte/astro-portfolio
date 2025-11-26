---
title: "ポートフォリオを作成する"
date: 2025-11-24
---

## 技術スタック
- **Languages**: TypeScript
- **Frameworks**: Astro
- **IaC / AWS**: Terraform, Amplify
- **CI/CD**: GitHub Actions

## 概要
Astroでポートフォリオサイトを開発  
TerraformによるIaCでリソース定義を行い、GitHub ActionsによるCI/CDで自動デプロイを実装

- GitHub Repository: https://github.com/F0rte/astro-portfolio

## 経験した開発
ポートフォリオサイトを初めて実装した  
AstroのWebページ部分については、astroのプロジェクト作成`npm create astro@latest`と、AI(Gemini)による生成コードを用いて実装し、一部を改修した  
インフラは、普段インターン等でCloudFormationを使い慣れていたが、初めてTerraformを採用した  
コミットの半分以上がデプロイエラーの解消となっているが、CI/CDによる自動デプロイまで実装することができた
