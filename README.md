# CBSN_NODDI
「包括脳MRI脳画像解析チュートリアル」＠東京大学医学部で使用するNODDI解析スクリプトです。

- [包括脳2016での講演スライド](https://www.slideshare.net/arayabi/2016-nodd-iturorialjpn20160123slideshare)

## AMICO
| ファイル名       | OS      | 用途                |
|------------------|---------|---------------------|
| AMICO_SetupMac.m | Mac     | AMICOセットアップ   |
| AMICO_SetupWin.m | Windows | AMICOセットアップ   |
| CBSN_AMICO_Mac.m | Mac     | AMICO解析スクリプト |
| CBSN_AMICO_Win.m | Windows | AMICO解析スクリプト |

## NODDI
| ファイル名                         | OS      | コア   | 解析対象のROI |
|------------------------------------|---------|--------|---------------|
| CBSN_NODDI_Mac_Multi_1Slice.m      | Mac     | マルチ | 1スライス     |
| CBSN_NODDI_Mac_Multi_WholeBrain.m  | Mac     | マルチ | 全脳          |
| CBSN_NODDI_Mac_Single_1Slice.m     | Mac     | 1コア  | 1スライス     |
| CBSN_NODDI_Mac_Single_WholeBrain.m | Mac     | 1コア  | 全脳          |
| CBSN_NODDI_Win_Multi_1Slice.m      | Windows | マルチ | 1スライス     |
| CBSN_NODDI_Win_Multi_WholeBrain.m  | Windows | マルチ | 全脳          |
| CBSN_NODDI_Win_Single_1Slice.m     | Windows | 1コア  | 1スライス     |
| CBSN_NODDI_Win_Single_WholeBrain.m | Windows | 1コア  | 全脳          |

## XCode 7 (Mac only)
* **xcode7matlab.m**: MATLABをXCode7に対応させるパッチ
