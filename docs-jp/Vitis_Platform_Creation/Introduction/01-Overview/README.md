<p align="right"><a href="../../README.md">English</a> | <a>日本語</a></p>

# プラットフォーム作成の概要

## Vitis アクセラレーション プラットフォームの概要

プラットフォームは Vitis デザインの開始点です。Vitis アプリケーションは、プラットフォーム上に構築されます。アクセラレーション アプリケーションには、アクセラレーション プラットフォームが必要で、エンベデッド プラットフォームまたは DC プラットフォームを使用できます。ソフトウェア開発アプリケーションは、ソフトウェア開発プラットフォームまたはエンベデッド アクセラレーション プラットフォーム上に構築できます。この資料では、エンベデッド プラットフォームの作成について説明します。

ザイリンクスでは、ザイリンクス評価ボード用のベース プラットフォームを提供しています。プラットフォームは、[ザイリンクス ダウンロード センター](https://japan.xilinx.com/support/download/index.html/content/xilinx/en/downloadNav/embedded-platforms.html)からダウンロードできます。ベース プラットフォームのソース コードは、ザイリンクスの [GitHub](https://github.com/Xilinx/Vitis_Embedded_Platform_Source) からダウンロードできます。

カスタム エンベデッド アクセラレーション プラットフォーム、ゼロから構築するか、ザイリンクス エンベデッド プラットフォームを変更して作成できます。この資料では、ゼロからのプラットフォーム構築に焦点を当てて説明します。

通常、Vitis のエンベデッド プラットフォームを作成するには、ハードウェア インターフェイスの設定、ソフトウェア コンポーネントの設定、プラットフォームのパッケージの 3 つの手順があります。このフローには、準備と最終テストが必要です。

![](./images/steps_overview.png)

次に、各手順の内容を簡単に説明します。

| | 手順の目的| 手順の詳細
|----------|----------|----------
| 手順 0| 開始点の準備: ボード用にブータブル ハードウェアとソフトウェアを設定| イメージでボードが正しくブートし、ペリフェラルが正常に動作することを確認します。<br />ボードの検証は、Vitis のエンベデッド プラットフォーム作成の一部ではありません。ボードの検証は、開発フローに Vitis を使用しない場合でも必要な手順です。<br />ザイリンクス評価ボードなどの検証済みボード コンフィギュレーションから開始する場合は、この手順は省略できます。
| 手順 1| Vitis プラットフォーム用のハードウェア インターフェイスを追加| 制御およびデータ アクセス用の AXI インターフェイスを追加します。<br />アクセラレーション カーネルで使用されるクロックと割り込みを追加します。
| 手順 2| Vitis プラットフォーム用のソフトウェア コンポーネントをアップデート| Vitis アプリケーションではアクセラレーション カーネルの制御に XRT が使用されるので、PetaLinux で XRT ソフトウェア ライブラリおよび依存を追加します。<br />PetaLinux イメージを生成します。
| 手順 3| Vitis プラットフォームをパッケージ| Vitis GUI または XSCT パッケージ コマンドを使用して、プラットフォーム ファイルを生成します。
| 手順 4| プラットフォームを検証| さまざまなテスト ケースを使用してプラットフォームをテストし、正しく動作することを確認します。

これらの手順の詳細な要件は、『Vitis 統合ソフトウェア プラットフォームの資料: アプリケーション アクセラレーション開発』 ([UG1393](https://japan.xilinx.com/html_docs/xilinx2020_1/vitis_doc/rjs1596051748503.html)) を参照してください。

この資料のチュートリアルは、これらの手順を示すセクションに分かれています。

[次のモジュール](../02-Edge-AI-ZCU104/README.md)では、ZCU104 ボード用のカスタム プラットフォームをゼロから作成する例を示します。

<p align="center"><sup>Copyright&copy; 2020 Xilinx</sup></p>
<p align="center"><sup>この資料は 2021 年 2 月 8 日時点の表記バージョンの英語版を翻訳したもので、内容に相違が生じる場合には原文を優先します。資料によっては英語版の更新に対応していないものがあります。
日本語版は参考用としてご使用の上、最新情報につきましては、必ず最新英語版をご参照ください。</sup></p>
