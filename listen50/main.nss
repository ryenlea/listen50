@primaryFontName: Helvetica;
@primaryFontNameBold: Helvetica-Bold;
@primaryFontColor: #3E3D43;
@secondaryFontColor: #838385;
@primaryBackgroundColor: #E6E6E6;
@primaryBackgroundTintColor: #ECECEC;
@primaryBackgroundColorTop: #F4EFEB;
@primaryBackgroundColorBottom: #EAE6E2;
@secondaryBackgroundColorTop: #FCFCFC;
@secondaryBackgroundColorBottom: #F9F9F9;
@primaryBorderColor: #DDD7D2;
@primaryBorderWidth: 1;

BarButton {
    background-color-top: #9D3024;
    background-color-bottom: #872A1F;
    border-color: #681C13;
    border-width: 1;
    corner-radius: 7;
    font-name: @primaryFontNameBold;
    font-color: #FFFFFF;
    font-size: 15;
    text-shadow-color: clear;
}
Button {
    background-color: #B43B2E;
    font-color: #FFFFFF;
    font-color-highlighted: #CCCCCC;
    font-name: @primaryFontNameBold;
    font-size: 17;
    height: 37;
    corner-radius: 18;
    padding: 12;
}
LargeButton {
    background-color: #B43B2E;
    height: 50;
    font-size: 24;
    corner-radius: 25;
    padding: 19;
}
SmallButton {
    background-color: #49C100;
    height: 24;
    font-size: 12;
    corner-radius: 12;
    padding: 8;
}
Label {
    font-name: @primaryFontName;
    font-size: 18;
    font-color: @primaryFontColor;
    text-auto-fit: false;
}
LargeLabel {
    font-name: @primaryFontNameBold;
    font-size: 26;
    font-color: @primaryFontColor;
}
SmallLabel {
    font-name: @primaryFontName;
    font-size: 14;
    font-color: #8F8F91;
}
NavigationBar {
    background-color-top: #B43B2E;
    background-color-bottom: #9E3126;
    font-name: @primaryFontNameBold;
    font-size: 21;
    font-color: #FFFFFF;
    text-shadow-color: clear;
}
SearchBar {
    background-color-top: @primaryBackgroundColorTop;
    background-color-bottom: @primaryBackgroundColorBottom;
    scope-background-color: @primaryBackgroundColorTop;
}
SegmentedControl {
    background-color: #BBBBBB;
    background-color-selected: #00ADEF;
    border-width: 1;
    border-color: @primaryBorderColor;
    corner-radius: 10;
    font-name: @primaryFontNameBold;
    font-size: 12;
    font-color: #FFFFFF;
    text-shadow-color: clear;
}
Switch {
    on-tint-color: @primaryBackgroundColor;
}
TabBar {
    background-color: @primaryBackgroundColor;
}
TabBarItem {
    font-name: @primaryFontNameBold;
    font-color: #777777;
    font-size: 18;
    text-offset: 0,-11;
}
TableCell {
    background-color: #F7F7F7;
    font-color: @primaryFontColor;
    font-name: @primaryFontNameBold;
    font-size: 17;
}
TableCellDetail {
    font-name: @primaryFontName;
    font-size: 14;
    font-color: @secondaryFontColor;
}
TextField {
    height: 37;
    font-color: @primaryFontColor;
    font-name: @primaryFontName;
    font-size: 17;
    background-color: #FFFFFF;
    border-style: none;
    border-color: @primaryBorderColor;
    border-width: 1;
    corner-radius: 7;
    padding: 12;
    vertical-align: center;
}
LargeTextField {
    height: 50;
    font-size: 28;
    corner-radius: 9;
    padding: 13;
}
View {
    background-color: @primaryBackgroundColor;
}

QASegmentedControl {
    background-color: #BBBBBB;
    background-color-selected: #B43B2E;
    border-width: 2;
    border-color: @primaryBorderColor;
    corner-radius: 10;
    font-name: @primaryFontNameBold;
    font-size: 15;
    font-color: #FFFFFF;
    text-shadow-color: clear;
}
QANavigationBar {
    background-color: #B43B2E;
    font-name: @primaryFontNameBold;
    font-size: 22;
    font-color: #FFFFFF;
    text-shadow-color: clear;
}
SettingsTableCell {
    background-color: #F7F7F7;
    font-color: @primaryFontColor;
    font-name: @primaryFontNameBold;
    font-size: 30;
}
SettingsTableCellDetail {
    font-name: @primaryFontName;
    font-size: 30;
    font-color: @secondaryFontColor;
}