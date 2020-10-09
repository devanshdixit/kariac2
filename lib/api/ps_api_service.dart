import 'dart:io';
import 'package:flutterbuyandsell/api/ps_url.dart';
import 'package:flutterbuyandsell/viewobject/about_us.dart';
import 'package:flutterbuyandsell/viewobject/chat_history.dart';
import 'package:flutterbuyandsell/viewobject/condition_of_item.dart';
import 'package:flutterbuyandsell/viewobject/deal_option.dart';
import 'package:flutterbuyandsell/viewobject/item_currency.dart';
import 'package:flutterbuyandsell/viewobject/item_location.dart';
import 'package:flutterbuyandsell/viewobject/item_paid_history.dart';
import 'package:flutterbuyandsell/viewobject/item_price_type.dart';
import 'package:flutterbuyandsell/viewobject/item_type.dart';
import 'package:flutterbuyandsell/viewobject/paid_ad_item.dart';
import 'package:flutterbuyandsell/viewobject/shipping_cost.dart';
import 'package:flutterbuyandsell/viewobject/shipping_method.dart';
import 'package:flutterbuyandsell/config/ps_config.dart';
import 'package:flutterbuyandsell/viewobject/api_status.dart';
import 'package:flutterbuyandsell/viewobject/blog.dart';
import 'package:flutterbuyandsell/viewobject/category.dart';
import 'package:flutterbuyandsell/viewobject/coupon_discount.dart';
import 'package:flutterbuyandsell/viewobject/default_photo.dart';
import 'package:flutterbuyandsell/viewobject/noti.dart';
import 'package:flutterbuyandsell/viewobject/product.dart';
import 'package:flutterbuyandsell/viewobject/ps_app_info.dart';
import 'package:flutterbuyandsell/viewobject/rating.dart';
import 'package:flutterbuyandsell/viewobject/shipping_city.dart';
import 'package:flutterbuyandsell/viewobject/shipping_country.dart';
import 'package:flutterbuyandsell/viewobject/sub_category.dart';
import 'package:flutterbuyandsell/viewobject/user.dart';
import 'package:flutterbuyandsell/viewobject/user_unread_message.dart';
import 'common/ps_api.dart';
import 'common/ps_resource.dart';

class PsApiService extends PsApi {
  ///
  /// App Info
  ///
  Future<PsResource<PSAppInfo>> postPsAppInfo(
      Map<dynamic, dynamic> jsonMap) async {
    const String url = '${PsUrl.ps_post_ps_app_info_url}';
    return await postData<PSAppInfo, PSAppInfo>(PSAppInfo(), url, jsonMap);
  }

  ///
  /// User Zone ShippingMethod
  ///
  Future<PsResource<ShippingCost>> postZoneShippingMethod(
      Map<dynamic, dynamic> jsonMap) async {
    const String url = '${PsUrl.ps_post_ps_zone_shipping_method_url}';
    return await postData<ShippingCost, ShippingCost>(
        ShippingCost(), url, jsonMap);
  }

  ///
  /// User Register
  ///
  Future<PsResource<User>> postUserRegister(
      Map<dynamic, dynamic> jsonMap) async {
    const String url = '${PsUrl.ps_post_ps_user_register_url}';
    return await postData<User, User>(User(), url, jsonMap);
  }

  ///
  /// User Verify Email
  ///
  Future<PsResource<User>> postUserEmailVerify(
      Map<dynamic, dynamic> jsonMap) async {
    const String url = '${PsUrl.ps_post_ps_user_email_verify_url}';
    return await postData<User, User>(User(), url, jsonMap);
  }

  ///
  /// User Login
  ///
  Future<PsResource<User>> postUserLogin(Map<dynamic, dynamic> jsonMap) async {
    const String url = '${PsUrl.ps_post_ps_user_login_url}';
    return await postData<User, User>(User(), url, jsonMap);
  }

  ///
  /// FB Login
  ///
  Future<PsResource<User>> postFBLogin(Map<dynamic, dynamic> jsonMap) async {
    const String url = '${PsUrl.ps_post_ps_fb_login_url}';
    return await postData<User, User>(User(), url, jsonMap);
  }

  ///
  /// Google Login
  ///
  Future<PsResource<User>> postGoogleLogin(
      Map<dynamic, dynamic> jsonMap) async {
    const String url = '${PsUrl.ps_post_ps_google_login_url}';
    return await postData<User, User>(User(), url, jsonMap);
  }

  ///
  /// Apple Login
  ///
  Future<PsResource<User>> postAppleLogin(Map<dynamic, dynamic> jsonMap) async {
    const String url = '${PsUrl.ps_post_ps_apple_login_url}';
    return await postData<User, User>(User(), url, jsonMap);
  }

  ///
  /// User Forgot Password
  ///
  Future<PsResource<ApiStatus>> postForgotPassword(
      Map<dynamic, dynamic> jsonMap) async {
    const String url = '${PsUrl.ps_post_ps_user_forgot_password_url}';
    return await postData<ApiStatus, ApiStatus>(ApiStatus(), url, jsonMap);
  }

  ///
  /// User Change Password
  ///
  Future<PsResource<ApiStatus>> postChangePassword(
      Map<dynamic, dynamic> jsonMap) async {
    const String url = '${PsUrl.ps_post_ps_user_change_password_url}';
    return await postData<ApiStatus, ApiStatus>(ApiStatus(), url, jsonMap);
  }

  ///
  /// User Profile Update
  ///
  Future<PsResource<User>> postProfileUpdate(
      Map<dynamic, dynamic> jsonMap) async {
    const String url = '${PsUrl.ps_post_ps_user_update_profile_url}';
    return await postData<User, User>(User(), url, jsonMap);
  }

  ///
  /// User Phone Login
  ///
  Future<PsResource<User>> postPhoneLogin(Map<dynamic, dynamic> jsonMap) async {
    const String url = '${PsUrl.ps_post_ps_phone_login_url}';
    return await postData<User, User>(User(), url, jsonMap);
  }

  ///
  ///  User Follow
  ///
  Future<PsResource<User>> postUserFollow(Map<dynamic, dynamic> jsonMap) async {
    const String url =
        '${PsUrl.ps_user_follow_url}/api_key/${PsConfig.ps_api_key}';

    return await postData<User, User>(User(), url, jsonMap);
  }

  ///
  /// User Resend Code
  ///
  Future<PsResource<ApiStatus>> postResendCode(
      Map<dynamic, dynamic> jsonMap) async {
    const String url = '${PsUrl.ps_post_ps_resend_code_url}';
    return await postData<ApiStatus, ApiStatus>(ApiStatus(), url, jsonMap);
  }

  ///
  /// User Detail
  ///
  Future<PsResource<User>> getUserDetail(Map<dynamic, dynamic> jsonMap) async {
    const String url = '${PsUrl.ps_user_detail_url}';
    return await postData<User, User>(User(), url, jsonMap);
  }

  ///
  /// Touch Count
  ///
  Future<PsResource<ApiStatus>> postTouchCount(
      Map<dynamic, dynamic> jsonMap) async {
    const String url = '${PsUrl.ps_post_ps_touch_count_url}';
    return await postData<ApiStatus, ApiStatus>(ApiStatus(), url, jsonMap);
  }

  ///
  /// Get User
  ///
  Future<PsResource<List<User>>> getUser(String userId) async {
    final String url =
        '${PsUrl.ps_user_url}/api_key/${PsConfig.ps_api_key}/user_id/$userId';

    return await getServerCall<User, List<User>>(User(), url);
  }

  Future<PsResource<User>> postImageUpload(
      String userId, String platformName, File imageFile) async {
    const String url = '${PsUrl.ps_image_upload_url}';

    return await postUploadImage<User, User>(User(), url, 'user_id', userId,
        'platform_name', platformName, imageFile);
  }

  Future<PsResource<DefaultPhoto>> postItemImageUpload(
      String itemId, String imgId, File imageFile) async {
    const String url = '${PsUrl.ps_item_image_upload_url}';

    return await postUploadImage<DefaultPhoto, DefaultPhoto>(
        DefaultPhoto(), url, 'item_id', itemId, 'img_id', imgId, imageFile);
  }

  ///
  /// Get Shipping Method
  ///
  Future<PsResource<List<ShippingMethod>>> getShippingMethod() async {
    const String url =
        '${PsUrl.ps_shipping_method_url}/api_key/${PsConfig.ps_api_key}';

    return await getServerCall<ShippingMethod, List<ShippingMethod>>(
        ShippingMethod(), url);
  }

  ///
  /// Category
  ///
  Future<PsResource<List<Category>>> getCategoryList(
      int limit, int offset) async {
    final String url =
        '${PsUrl.ps_category_url}/api_key/${PsConfig.ps_api_key}/limit/$limit/offset/$offset';

    return await getServerCall<Category, List<Category>>(Category(), url);
  }

  Future<PsResource<List<Category>>> getAllCategoryList(
      Map<dynamic, dynamic> jsonMap) async {
    const String url =
        '${PsUrl.ps_category_url}/api_key/${PsConfig.ps_api_key}';

    return await postData<Category, List<Category>>(Category(), url, jsonMap);
  }

  ///
  /// Item List From Follower
  ///
  Future<PsResource<List<Product>>> getAllItemListFromFollower(
      String loginUserId, int limit, int offset) async {
    final String url =
        '${PsUrl.ps_item_list_from_followers_url}/api_key/${PsConfig.ps_api_key}/login_user_id/$loginUserId/limit/$limit/offset/$offset';

    return await getServerCall<Product, List<Product>>(Product(), url);
  }

  ///
  /// Paid Ad List
  ///
  Future<PsResource<List<PaidAdItem>>> getPaidAdItemList(
      String loginUserId, int limit, int offset) async {
    final String url =
        '${PsUrl.ps_paid_ad_item_list_url}/api_key/${PsConfig.ps_api_key}/login_user_id/$loginUserId/limit/$limit/offset/$offset';

    return await getServerCall<PaidAdItem, List<PaidAdItem>>(PaidAdItem(), url);
  }

  ///
  /// Sub Category
  ///
  Future<PsResource<List<SubCategory>>> getSubCategoryList(
      int limit, int offset, String categoryId) async {
    final String url =
        '${PsUrl.ps_subCategory_url}/api_key/${PsConfig.ps_api_key}/limit/$limit/offset/$offset/cat_id/$categoryId';

    return await getServerCall<SubCategory, List<SubCategory>>(
        SubCategory(), url);
  }

  ///
  /// Item Type
  ///
  Future<PsResource<List<ItemType>>> getItemTypeList(
      int limit, int offset) async {
    final String url =
        '${PsUrl.ps_item_type_url}/api_key/${PsConfig.ps_api_key}/limit/$limit/offset/$offset';

    return await getServerCall<ItemType, List<ItemType>>(ItemType(), url);
  }

  ///
  /// Item Condition
  ///
  Future<PsResource<List<ConditionOfItem>>> getItemConditionList(
      int limit, int offset) async {
    final String url =
        '${PsUrl.ps_item_condition_url}/api_key/${PsConfig.ps_api_key}/limit/$limit/offset/$offset';

    return await getServerCall<ConditionOfItem, List<ConditionOfItem>>(
        ConditionOfItem(), url);
  }

  ///
  /// Item Price Type
  ///
  Future<PsResource<List<ItemPriceType>>> getItemPriceTypeList(
      int limit, int offset) async {
    final String url =
        '${PsUrl.ps_item_price_type_url}/api_key/${PsConfig.ps_api_key}/limit/$limit/offset/$offset';

    return await getServerCall<ItemPriceType, List<ItemPriceType>>(
        ItemPriceType(), url);
  }

  ///
  /// Item Currency Type
  ///
  Future<PsResource<List<ItemCurrency>>> getItemCurrencyList(
      int limit, int offset) async {
    final String url =
        '${PsUrl.ps_item_currency_type_url}/api_key/${PsConfig.ps_api_key}/limit/$limit/offset/$offset';

    return await getServerCall<ItemCurrency, List<ItemCurrency>>(
        ItemCurrency(), url);
  }

  ///
  /// Item Deal Option
  ///
  Future<PsResource<List<DealOption>>> getItemDealOptionList(
      int limit, int offset) async {
    final String url =
        '${PsUrl.ps_item_deal_option_url}/api_key/${PsConfig.ps_api_key}/limit/$limit/offset/$offset';

    return await getServerCall<DealOption, List<DealOption>>(DealOption(), url);
  }

  Future<PsResource<List<SubCategory>>> getAllSubCategoryList(
      String categoryId) async {
    final String url =
        '${PsUrl.ps_subCategory_url}/api_key/${PsConfig.ps_api_key}/cat_id/$categoryId';

    return await getServerCall<SubCategory, List<SubCategory>>(
        SubCategory(), url);
  }

  //noti
  Future<PsResource<List<Noti>>> getNotificationList(
      Map<dynamic, dynamic> paramMap, int limit, int offset) async {
    final String url =
        '${PsUrl.ps_noti_url}/api_key/${PsConfig.ps_api_key}/limit/$limit/offset/$offset';

    return await postData<Noti, List<Noti>>(Noti(), url, paramMap);
  }

  //
  /// Product
  ///
  Future<PsResource<List<Product>>> getProductList(
      Map<dynamic, dynamic> paramMap, int limit, int offset) async {
    final String url =
        '${PsUrl.ps_product_url}/api_key/${PsConfig.ps_api_key}/limit/$limit/offset/$offset';

    return await postData<Product, List<Product>>(Product(), url, paramMap);
  }

  ///
  /// ItemDetail
  ///
  Future<PsResource<Product>> getItemDetail(
      String itemId, String loginUserId) async {
    final String url =
        '${PsUrl.ps_item_detail_url}/api_key/${PsConfig.ps_api_key}/id/$itemId/login_user_id/$loginUserId';
    return await getServerCall<Product, Product>(Product(), url);
  }

  Future<PsResource<List<Product>>> getRelatedProductList(
      String productId, String categoryId, int limit, int offset) async {
    final String url =
        '${PsUrl.ps_relatedProduct_url}/api_key/${PsConfig.ps_api_key}/id/$productId/cat_id/$categoryId/limit/$limit/offset/$offset';
    print(url);
    return await getServerCall<Product, List<Product>>(Product(), url);
  }

  ///
  /// Search Item
  ///
  Future<PsResource<List<Product>>> getItemListByUserId(
      Map<dynamic, dynamic> jsonMap,
      int limit,
      int offset,
      String loginUserId) async {
    final String url =
        '${PsUrl.ps_search_item_url}/api_key/${PsConfig.ps_api_key}/limit/$limit/offset/$offset/login_user_id/$loginUserId';

    return await postData<Product, List<Product>>(Product(), url, jsonMap);
  }

  ///
  /// Search User
  ///
  Future<PsResource<List<User>>> getUserList(
      Map<dynamic, dynamic> jsonMap, int limit, int offset) async {
    final String url =
        '${PsUrl.ps_search_user_url}/api_key/${PsConfig.ps_api_key}/limit/$limit/offset/$offset';

    return await postData<User, List<User>>(User(), url, jsonMap);
  }

  ///Setting
  ///

  // Future<PsResource<ShopInfo>> getShopInfo() async {
  //   const String url = '$ps_shop_info_url/api_key/${PsConfig.ps_api_key}';
  //   return await getServerCall<ShopInfo, ShopInfo>(ShopInfo(), url);
  // }

  ///Blog
  ///

  Future<PsResource<List<Blog>>> getBlogList(int limit, int offset) async {
    final String url =
        '${PsUrl.ps_bloglist_url}/api_key/${PsConfig.ps_api_key}/limit/$limit/offset/$offset';

    return await getServerCall<Blog, List<Blog>>(Blog(), url);
  }

  ///
  /// Favourites
  ///
  Future<PsResource<List<Product>>> getFavouritesList(
      String loginUserId, int limit, int offset) async {
    final String url =
        '${PsUrl.ps_favouriteList_url}/api_key/${PsConfig.ps_api_key}/login_user_id/$loginUserId/limit/$limit/offset/$offset';

    return await getServerCall<Product, List<Product>>(Product(), url);
  }

  ///
  /// Product List By Collection Id
  ///
  Future<PsResource<List<Product>>> getProductListByCollectionId(
      String collectionId, int limit, int offset) async {
    final String url =
        '${PsUrl.ps_all_collection_url}/api_key/${PsConfig.ps_api_key}/id/$collectionId/limit/$limit/offset/$offset';

    return await getServerCall<Product, List<Product>>(Product(), url);
  }

  Future<PsResource<ApiStatus>> postDeleteUser(
      Map<dynamic, dynamic> jsonMap) async {
    const String url = '${PsUrl.ps_delete_user_url}';
    return await postData<ApiStatus, ApiStatus>(ApiStatus(), url, jsonMap);
  }

  Future<PsResource<ApiStatus>> rawRegisterNotiToken(
      Map<dynamic, dynamic> jsonMap) async {
    const String url = '${PsUrl.ps_noti_register_url}';
    return await postData<ApiStatus, ApiStatus>(ApiStatus(), url, jsonMap);
  }

  Future<PsResource<ApiStatus>> rawUnRegisterNotiToken(
      Map<dynamic, dynamic> jsonMap) async {
    const String url = '${PsUrl.ps_noti_unregister_url}';
    return await postData<ApiStatus, ApiStatus>(ApiStatus(), url, jsonMap);
  }

  Future<PsResource<Noti>> postNoti(Map<dynamic, dynamic> jsonMap) async {
    const String url = '${PsUrl.ps_noti_post_url}';
    return await postData<Noti, Noti>(Noti(), url, jsonMap);
  }

  Future<PsResource<ApiStatus>> postChatNoti(
      Map<dynamic, dynamic> jsonMap) async {
    const String url = '${PsUrl.ps_chat_noti_url}';
    return await postData<ApiStatus, ApiStatus>(ApiStatus(), url, jsonMap);
  }

  ///
  /// Rating
  ///
  Future<PsResource<Rating>> postRating(Map<dynamic, dynamic> jsonMap) async {
    const String url = '${PsUrl.ps_ratingPost_url}';
    return await postData<Rating, Rating>(Rating(), url, jsonMap);
  }

  // Future<PsResource<List<Rating>>> getRatingList(
  //     String userId, int limit, int offset) async {
  //   final String url =
  //       '${PsUrl.ps_ratingList_url}/api_key/${PsConfig.ps_api_key}/user_id/$userId/limit/$limit/offset/$offset';

  //   return await getServerCall<Rating, List<Rating>>(Rating(), url);
  // }

  Future<PsResource<List<Rating>>> getRatingList(
      Map<dynamic, dynamic> jsonMap, int limit, int offset) async {
    final String url =
        '${PsUrl.ps_ratingList_url}/api_key/${PsConfig.ps_api_key}/limit/$limit/offset/$offset';
    return await postData<Rating, List<Rating>>(Rating(), url, jsonMap);
  }

  Future<PsResource<Product>> postFavourite(
      Map<dynamic, dynamic> jsonMap) async {
    const String url = '${PsUrl.ps_favouritePost_url}';
    return await postData<Product, Product>(Product(), url, jsonMap);
  }

  ///
  /// Gallery
  ///
  Future<PsResource<List<DefaultPhoto>>> getImageList(
      String parentImgId, String imageType, int limit, int offset) async {
    final String url =
        '${PsUrl.ps_gallery_url}/api_key/${PsConfig.ps_api_key}/img_parent_id/$parentImgId/img_type/$imageType/limit/$limit/offset/$offset';

    return await getServerCall<DefaultPhoto, List<DefaultPhoto>>(
        DefaultPhoto(), url);
  }

  ///
  /// Contact
  ///
  Future<PsResource<ApiStatus>> postContactUs(
      Map<dynamic, dynamic> jsonMap) async {
    const String url = '${PsUrl.ps_contact_us_url}';
    return await postData<ApiStatus, ApiStatus>(ApiStatus(), url, jsonMap);
  }

  ///
  /// Item Entry
  ///
  Future<PsResource<Product>> postItemEntry(
      Map<dynamic, dynamic> jsonMap) async {
    const String url = '${PsUrl.ps_item_entry_url}';
    return await postData<Product, Product>(Product(), url, jsonMap);
  }

  ///
  /// CouponDiscount
  ///
  Future<PsResource<CouponDiscount>> postCouponDiscount(
      Map<dynamic, dynamic> jsonMap) async {
    const String url = '${PsUrl.ps_couponDiscount_url}';
    return await postData<CouponDiscount, CouponDiscount>(
        CouponDiscount(), url, jsonMap);
  }

  ///
  /// Token
  ///
  Future<PsResource<ApiStatus>> getToken() async {
    const String url = '${PsUrl.ps_token_url}/api_key/${PsConfig.ps_api_key}';
    return await getServerCall<ApiStatus, ApiStatus>(ApiStatus(), url);
  }

  ///
  /// Shipping Country And City
  ///
  Future<PsResource<List<ShippingCountry>>> getCountryList(
      int limit, int offset, Map<dynamic, dynamic> jsonMap) async {
    final String url =
        '${PsUrl.ps_shipping_country_url}/api_key/${PsConfig.ps_api_key}/limit/$limit/offset/$offset';

    return await postData<ShippingCountry, List<ShippingCountry>>(
        ShippingCountry(), url, jsonMap);
  }

  Future<PsResource<List<ShippingCity>>> getCityList(
      int limit, int offset, Map<dynamic, dynamic> jsonMap) async {
    final String url =
        '${PsUrl.ps_shipping_city_url}/api_key/${PsConfig.ps_api_key}/limit/$limit/offset/$offset';

    return await postData<ShippingCity, List<ShippingCity>>(
        ShippingCity(), url, jsonMap);
  }

  //   Future<PsResource<List<ShippingCountry>>> postShopIdForShippingCountry(
  //     Map<dynamic, dynamic> jsonMap) async {
  //   const String url = '${PsUrl.ps_post_ps_touch_count_url}';
  //    return await postData<ShippingCity, List<ShippingCity>>(ShippingCity(), url, jsonMap);
  // }

  Future<PsResource<List<ItemLocation>>> getItemLocationList(
      int limit, int offset) async {
    final String url =
        '${PsUrl.ps_item_location_url}/api_key/${PsConfig.ps_api_key}/limit/$limit/offset/$offset';

    return await getServerCall<ItemLocation, List<ItemLocation>>(
        ItemLocation(), url);
  }

  ///
  /// ChatHistory (or) GetBuyerAndSeller
  ///
  Future<PsResource<List<ChatHistory>>> getChatHistoryList(
      Map<dynamic, dynamic> jsonMap) async {
    const String url = '${PsUrl.ps_chat_history_url}';

    return await postData<ChatHistory, List<ChatHistory>>(
        ChatHistory(), url, jsonMap);
  }

  ///
  /// Add Chat History or Sync Chat History
  ///
  Future<PsResource<ChatHistory>> syncChatHistory(
      Map<dynamic, dynamic> jsonMap) async {
    const String url = '${PsUrl.ps_add_chat_history_url}';

    return await postData<ChatHistory, ChatHistory>(
        ChatHistory(), url, jsonMap);
  }

  ///
  /// Accepted Offer
  ///
  Future<PsResource<ChatHistory>> acceptedOffer(
      Map<dynamic, dynamic> jsonMap, String loginUserId) async {
    final String url =
        '${PsUrl.ps_accepted_offer_url}/login_user_id/$loginUserId';

    return await postData<ChatHistory, ChatHistory>(
        ChatHistory(), url, jsonMap);
  }

  ///
  /// Reject Offer
  ///
  Future<PsResource<ChatHistory>> rejectedOffer(
      Map<dynamic, dynamic> jsonMap, String loginUserId) async {
    final String url =
        '${PsUrl.ps_rejected_offer_url}/login_user_id/$loginUserId';

    return await postData<ChatHistory, ChatHistory>(
        ChatHistory(), url, jsonMap);
  }

  ///
  /// get Chat History
  ///
  Future<PsResource<ChatHistory>> getChatHistory(
      Map<dynamic, dynamic> jsonMap) async {
    const String url = '${PsUrl.ps_get_chat_history_url}';

    return await postData<ChatHistory, ChatHistory>(
        ChatHistory(), url, jsonMap);
  }

  ///
  /// Make Mark As Sold
  ///
  Future<PsResource<ChatHistory>> makeMarkAsSold(
      Map<dynamic, dynamic> jsonMap, String loginUserId) async {
    final String url =
        '${PsUrl.ps_mark_as_sold_url}/login_user_id/$loginUserId';

    return await postData<ChatHistory, ChatHistory>(
        ChatHistory(), url, jsonMap);
  }

  ///
  /// About Us
  ///
  Future<PsResource<List<AboutUs>>> getAboutUsDataList() async {
    const String url =
        '${PsUrl.ps_about_us_url}/api_key/${PsConfig.ps_api_key}/';
    return await getServerCall<AboutUs, List<AboutUs>>(AboutUs(), url);
  }

  ///
  /// Mark As Sold
  ///
  Future<PsResource<Product>> markSoldOutItem(
      Map<dynamic, dynamic> jsonMap, String loginUserId) async {
    final String url =
        '${PsUrl.ps_mark_sold_out_url}/login_user_id/$loginUserId';
    return await postData<Product, Product>(Product(), url, jsonMap);
  }

  ///
  /// User Report Item
  ///
  Future<PsResource<ApiStatus>> reportItem(
      Map<dynamic, dynamic> jsonMap) async {
    const String url = '${PsUrl.ps_report_item_url}';
    return await postData<ApiStatus, ApiStatus>(ApiStatus(), url, jsonMap);
  }

  ///
  /// Item Paid History
  ///
  Future<PsResource<ItemPaidHistory>> postItemPaidHistory(
      Map<dynamic, dynamic> jsonMap) async {
    const String url = '${PsUrl.ps_item_paid_history_entry_url}';
    return await postData<ItemPaidHistory, ItemPaidHistory>(
        ItemPaidHistory(), url, jsonMap);
  }

  /// Reset Unread Message Count
  ///
  Future<PsResource<ChatHistory>> resetUnreadMessageCount(
      Map<dynamic, dynamic> jsonMap) async {
    const String url = '${PsUrl.ps_reset_unread_message_count_url}';

    return await postData<ChatHistory, ChatHistory>(
        ChatHistory(), url, jsonMap);
  }

  ///
  /// User Unread Message Count
  ///
  Future<PsResource<UserUnreadMessage>> postUserUnreadMessageCount(
      Map<dynamic, dynamic> jsonMap) async {
    const String url = '${PsUrl.ps_user_unread_count_url}';

    return await postData<UserUnreadMessage, UserUnreadMessage>(
        UserUnreadMessage(), url, jsonMap);
  }

  ///
  /// Chat Image Upload
  ///

  Future<PsResource<DefaultPhoto>> postChatImageUpload(
      String senderId,
      String sellerUserId,
      String buyerUserId,
      String itemId,
      String type,
      File imageFile) async {
    const String url = '${PsUrl.ps_chat_image_upload_url}';

    return postUploadChatImage<DefaultPhoto, DefaultPhoto>(
        DefaultPhoto(),
        url,
        'sender_id',
        senderId,
        'seller_user_id',
        sellerUserId,
        'buyer_user_id',
        buyerUserId,
        'item_id',
        itemId,
        'type',
        type,
        imageFile);
  }

  ///
  /// User Delete Item
  ///
  Future<PsResource<ApiStatus>> deleteItem(
      Map<dynamic, dynamic> jsonMap) async {
    const String url = '${PsUrl.ps_item_delete_url}';
    return await postData<ApiStatus, ApiStatus>(ApiStatus(), url, jsonMap);
  }
}
