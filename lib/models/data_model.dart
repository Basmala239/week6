import 'package:week6/core/managers/assets_manager/assets_manager.dart';

class DetailModel{
String iconpath;
String title;
DetailModel(this.iconpath,this.title);
static List<DetailModel>list=[
  DetailModel(AssetManager.profileicon,'My Profile'),
  DetailModel(AssetManager.ordericon,'My Orders'),
  DetailModel(AssetManager.mapicon,'Delivery Address'),
  DetailModel(AssetManager.payicon,'Payments Methods'),
  DetailModel(AssetManager.mailicon,'Contact Us'),
  DetailModel(AssetManager.settingicon,'Settings'),
  DetailModel(AssetManager.helpicon,'Help & FAQ '),
];
}