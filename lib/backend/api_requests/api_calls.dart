import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GetuserinfoCall {
  static Future<ApiCallResponse> call({
    String? loginame = '',
    String? urlendpoint = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'getuserinfo',
      apiUrl: '${urlendpoint}/Equipment/GetUserInfo',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'uid': loginame,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic empid(dynamic response) => getJsonField(
        response,
        r'''$[0].EmployeeID''',
      );
  static dynamic empcode(dynamic response) => getJsonField(
        response,
        r'''$[0].EmployeeCode''',
      );
  static dynamic loginame(dynamic response) => getJsonField(
        response,
        r'''$[0].LoginName''',
      );
  static dynamic empname(dynamic response) => getJsonField(
        response,
        r'''$[0].EmployeeName''',
      );
  static dynamic email(dynamic response) => getJsonField(
        response,
        r'''$[0].EmailAddress''',
      );
  static dynamic workcenter(dynamic response) => getJsonField(
        response,
        r'''$[0].MainWorkCenter''',
      );
}

class GetEquipmentbyRequestCall {
  static Future<ApiCallResponse> call({
    String? reqid = '',
    String? urlendpoint = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'GetEquipmentbyRequest',
      apiUrl: '${urlendpoint}/Equipment/GetEquipmentbyRequest2',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'Reqid': reqid,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic equipmentall(dynamic response) => getJsonField(
        response,
        r'''$.Equipment''',
        true,
      );
  static dynamic reqid(dynamic response) => getJsonField(
        response,
        r'''$.Equipment[:].ID''',
      );
  static dynamic refno(dynamic response) => getJsonField(
        response,
        r'''$.Equipment[:].ReferenceNo''',
      );
  static dynamic eqnoname(dynamic response) => getJsonField(
        response,
        r'''$.Equipment[:].EquipmentNo''',
      );
  static dynamic equnr(dynamic response) => getJsonField(
        response,
        r'''$.Equipment[:].EQUNR''',
      );
  static dynamic requestype(dynamic response) => getJsonField(
        response,
        r'''$.Equipment[:].RequestType''',
      );
  static dynamic fl(dynamic response) => getJsonField(
        response,
        r'''$.Equipment[:].FL''',
      );
  static dynamic fldesc(dynamic response) => getJsonField(
        response,
        r'''$.Equipment[:].FLDesc''',
      );
  static dynamic eqdesc(dynamic response) => getJsonField(
        response,
        r'''$.Equipment[:].EquipmentDesc''',
      );
  static dynamic manufacturer(dynamic response) => getJsonField(
        response,
        r'''$.Equipment[:].Manufacturer''',
      );
  static dynamic modelno(dynamic response) => getJsonField(
        response,
        r'''$.Equipment[:].ModelNo''',
      );
  static dynamic serialno(dynamic response) => getJsonField(
        response,
        r'''$.Equipment[:].SerialNo''',
      );
  static dynamic objcode(dynamic response) => getJsonField(
        response,
        r'''$.Equipment[:].ObjectTypeCode''',
      );
  static dynamic objdesc(dynamic response) => getJsonField(
        response,
        r'''$.Equipment[:].ObjectTypeDesc''',
      );
  static dynamic startupdate(dynamic response) => getJsonField(
        response,
        r'''$.Equipment[:].StartUpDate''',
      );
  static dynamic constyear(dynamic response) => getJsonField(
        response,
        r'''$.Equipment[:].ConstructYear''',
      );
  static dynamic constmonth(dynamic response) => getJsonField(
        response,
        r'''$.Equipment[:].ContructMonth''',
      );
  static dynamic countrycode(dynamic response) => getJsonField(
        response,
        r'''$.Equipment[:].CountryCode''',
      );
  static dynamic countryname(dynamic response) => getJsonField(
        response,
        r'''$.Equipment[:].CountryName''',
      );
  static dynamic businessarea(dynamic response) => getJsonField(
        response,
        r'''$.Equipment[:].BusinessArea''',
      );
  static dynamic assetno(dynamic response) => getJsonField(
        response,
        r'''$.Equipment[:].AssetNo''',
      );
  static dynamic costcenter(dynamic response) => getJsonField(
        response,
        r'''$.Equipment[:].CostCenter''',
      );
  static dynamic plannergroupcode(dynamic response) => getJsonField(
        response,
        r'''$.Equipment[:].PlannerGroupCode''',
      );
  static dynamic plannergroupname(dynamic response) => getJsonField(
        response,
        r'''$.Equipment[:].PlannnerGroupDesc''',
      );
  static dynamic mainworkcode(dynamic response) => getJsonField(
        response,
        r'''$.Equipment[:].MainWorkCenterCode''',
      );
  static dynamic mainworkname(dynamic response) => getJsonField(
        response,
        r'''$.Equipment[:].MainWorkCenterDesc''',
      );
  static dynamic statuscode(dynamic response) => getJsonField(
        response,
        r'''$.Equipment[:].StatusCode''',
      );
  static dynamic statusname(dynamic response) => getJsonField(
        response,
        r'''$.Equipment[:].Status''',
      );
  static dynamic colorcode(dynamic response) => getJsonField(
        response,
        r'''$.Equipment[:].ColorCode''',
      );
  static dynamic createdbyname(dynamic response) => getJsonField(
        response,
        r'''$.Equipment[:].CreatedBy''',
      );
  static dynamic createddate(dynamic response) => getJsonField(
        response,
        r'''$.Equipment[:].CreatedDate''',
      );
  static dynamic modifiedby(dynamic response) => getJsonField(
        response,
        r'''$.Equipment[:].ModifiedBy''',
      );
  static dynamic modifieddate(dynamic response) => getJsonField(
        response,
        r'''$.Equipment[:].ModifiedDate''',
      );
  static dynamic submittedby(dynamic response) => getJsonField(
        response,
        r'''$.Equipment[:].SubmittedBy''',
      );
  static dynamic submissiondate(dynamic response) => getJsonField(
        response,
        r'''$.Equipment[:].SubmissionDate''',
      );
  static dynamic authorizationgroup(dynamic response) => getJsonField(
        response,
        r'''$.Equipment[:].AuthorizationGroup''',
      );
  static dynamic companycode(dynamic response) => getJsonField(
        response,
        r'''$.Equipment[:].CompanyCode''',
      );
  static dynamic planningplant(dynamic response) => getJsonField(
        response,
        r'''$.Equipment[:].PlanningPlant''',
      );
  static dynamic mainworkcenterplant(dynamic response) => getJsonField(
        response,
        r'''$.Equipment[:].MainWorkCenterPlant''',
      );
  static dynamic classheadall(dynamic response) => getJsonField(
        response,
        r'''$.ClassHeaderCode''',
        true,
      );
  static dynamic klart(dynamic response) => getJsonField(
        response,
        r'''$.ClassHeaderCode[:].KLART''',
        true,
      );
  static dynamic classheadercode(dynamic response) => getJsonField(
        response,
        r'''$.ClassHeaderCode[:].ClassHeaderCode''',
        true,
      );
  static dynamic kschl(dynamic response) => getJsonField(
        response,
        r'''$.ClassHeaderCode[:].KSCHL''',
        true,
      );
  static dynamic charall(dynamic response) => getJsonField(
        response,
        r'''$.ClassCharacteristic''',
        true,
      );
  static dynamic charheadcode(dynamic response) => getJsonField(
        response,
        r'''$.ClassCharacteristic[:].ClassHeaderCode''',
        true,
      );
  static dynamic characteristiccode(dynamic response) => getJsonField(
        response,
        r'''$.ClassCharacteristic[:].CharacteristicCode''',
        true,
      );
  static dynamic charcode(dynamic response) => getJsonField(
        response,
        r'''$.ClassCharacteristic[:].CharCode''',
        true,
      );
  static dynamic charname(dynamic response) => getJsonField(
        response,
        r'''$.ClassCharacteristic[:].CharateristicName''',
        true,
      );
  static dynamic charnewvalue(dynamic response) => getJsonField(
        response,
        r'''$.ClassCharacteristic[:].NewValue''',
        true,
      );
  static dynamic photosall(dynamic response) => getJsonField(
        response,
        r'''$.Photos''',
        true,
      );
  static dynamic filename(dynamic response) => getJsonField(
        response,
        r'''$.Photos[:].FileName''',
        true,
      );
  static dynamic filesize(dynamic response) => getJsonField(
        response,
        r'''$.Photos[:].FileSize''',
        true,
      );
  static dynamic photodesc(dynamic response) => getJsonField(
        response,
        r'''$.Photos[:].Description''',
        true,
      );
  static dynamic photopath(dynamic response) => getJsonField(
        response,
        r'''$.Photos[:].FilePath''',
        true,
      );
  static dynamic photostatus(dynamic response) => getJsonField(
        response,
        r'''$.Photos[:].FileStatus''',
        true,
      );
  static dynamic photoactiontype(dynamic response) => getJsonField(
        response,
        r'''$.Photos[:].ActionType''',
        true,
      );
  static dynamic photocreateddate(dynamic response) => getJsonField(
        response,
        r'''$.Photos[:].CreatedDate''',
        true,
      );
  static dynamic photouploadedby(dynamic response) => getJsonField(
        response,
        r'''$.Photos[:].UploadedBy''',
        true,
      );
  static dynamic assetsubno(dynamic response) => getJsonField(
        response,
        r'''$.Equipment[:].AssetSubNo''',
      );
  static dynamic superiorequipmentno(dynamic response) => getJsonField(
        response,
        r'''$.Equipment[:].SuperiorEquipmentNo''',
      );
}

class GetEquipmentCall {
  static Future<ApiCallResponse> call({
    String? equnr = '',
    String? urlendpoint = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'GetEquipment',
      apiUrl: '${urlendpoint}/Equipment/GetEquipment2',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'EQUNR': equnr,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic equipment(dynamic response) => getJsonField(
        response,
        r'''$.Equipment''',
        true,
      );
  static dynamic equnr(dynamic response) => getJsonField(
        response,
        r'''$.Equipment[:].EQUNR''',
      );
  static dynamic tplnr(dynamic response) => getJsonField(
        response,
        r'''$.Equipment[:].TPLNR''',
      );
  static dynamic pltxt(dynamic response) => getJsonField(
        response,
        r'''$.Equipment[:].PLTXT''',
      );
  static dynamic eqktu(dynamic response) => getJsonField(
        response,
        r'''$.Equipment[:].EQKTU''',
      );
  static dynamic herst(dynamic response) => getJsonField(
        response,
        r'''$.Equipment[:].HERST''',
      );
  static dynamic typbz(dynamic response) => getJsonField(
        response,
        r'''$.Equipment[:].TYPBZ''',
      );
  static dynamic serge(dynamic response) => getJsonField(
        response,
        r'''$.Equipment[:].SERGE''',
      );
  static dynamic eqart(dynamic response) => getJsonField(
        response,
        r'''$.Equipment[:].EQART''',
      );
  static dynamic objtypetext(dynamic response) => getJsonField(
        response,
        r'''$.Equipment[:].ObjectTypeText''',
      );
  static dynamic inbdt(dynamic response) => getJsonField(
        response,
        r'''$.Equipment[:].INBDT''',
      );
  static dynamic herld(dynamic response) => getJsonField(
        response,
        r'''$.Equipment[:].HERLD''',
      );
  static dynamic gsber(dynamic response) => getJsonField(
        response,
        r'''$.Equipment[:].GSBER''',
      );
  static dynamic kostl(dynamic response) => getJsonField(
        response,
        r'''$.Equipment[:].KOSTL''',
      );
  static dynamic ingrp(dynamic response) => getJsonField(
        response,
        r'''$.Equipment[:].INGRP''',
      );
  static dynamic plannergroupname(dynamic response) => getJsonField(
        response,
        r'''$.Equipment[:].PlannerGroupName''',
      );
  static dynamic plannergroupcodename(dynamic response) => getJsonField(
        response,
        r'''$.Equipment[:].PlannerGroup''',
      );
  static dynamic mainworkcentername(dynamic response) => getJsonField(
        response,
        r'''$.Equipment[:].MainWorkCenterName''',
      );
  static dynamic mainworkcentercode(dynamic response) => getJsonField(
        response,
        r'''$.Equipment[:].MainWorkCenterCode''',
      );
  static dynamic mainworkcentercodename(dynamic response) => getJsonField(
        response,
        r'''$.Equipment[:].MainWorkCenter''',
      );
  static dynamic constyear(dynamic response) => getJsonField(
        response,
        r'''$.Equipment[:].BAUJJ''',
      );
  static dynamic constmonth(dynamic response) => getJsonField(
        response,
        r'''$.Equipment[:].BAUMM''',
      );
  static dynamic classheadercodeall(dynamic response) => getJsonField(
        response,
        r'''$.ClassHeaderCode''',
        true,
      );
  static dynamic classheadercodelist(dynamic response) => getJsonField(
        response,
        r'''$.ClassHeaderCode[:].ClassHeaderCode''',
        true,
      );
  static dynamic classcharall(dynamic response) => getJsonField(
        response,
        r'''$.ClassCharacteristic''',
        true,
      );
  static dynamic charheadercode(dynamic response) => getJsonField(
        response,
        r'''$.ClassCharacteristic[:].ClassHeaderCode''',
        true,
      );
  static dynamic charcode(dynamic response) => getJsonField(
        response,
        r'''$.ClassCharacteristic[:].CharacteristicCode''',
        true,
      );
  static dynamic charvalue(dynamic response) => getJsonField(
        response,
        r'''$.ClassCharacteristic[:].NewValue''',
        true,
      );
  static dynamic photosall(dynamic response) => getJsonField(
        response,
        r'''$.Photos''',
        true,
      );
  static dynamic filename(dynamic response) => getJsonField(
        response,
        r'''$.Photos[:].FileName''',
        true,
      );
  static dynamic filesize(dynamic response) => getJsonField(
        response,
        r'''$.Photos[:].FileSize''',
        true,
      );
  static dynamic description(dynamic response) => getJsonField(
        response,
        r'''$.Photos[:].Description''',
        true,
      );
  static dynamic filepath(dynamic response) => getJsonField(
        response,
        r'''$.Photos[:].FilePath''',
        true,
      );
  static dynamic filestatus(dynamic response) => getJsonField(
        response,
        r'''$.Photos[:].FileStatus''',
        true,
      );
  static dynamic createddate(dynamic response) => getJsonField(
        response,
        r'''$.Photos[:].CreatedDate''',
        true,
      );
  static dynamic uploadedby(dynamic response) => getJsonField(
        response,
        r'''$.Photos[:].UploadedBy''',
        true,
      );
  static dynamic anlnr(dynamic response) => getJsonField(
        response,
        r'''$.Equipment[:].ANLNR''',
      );
  static dynamic anlun(dynamic response) => getJsonField(
        response,
        r'''$.Equipment[:].ANLUN''',
      );
  static dynamic hequi(dynamic response) => getJsonField(
        response,
        r'''$.Equipment[:].HEQUI''',
      );
}

class GetmysubmissionCall {
  static Future<ApiCallResponse> call({
    String? uid = '',
    String? urlendpoint = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'getmysubmission',
      apiUrl: '${urlendpoint}/Equipment/GetMySubmissionHistory',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'uid': uid,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic id(dynamic response) => getJsonField(
        response,
        r'''$[:].ID''',
        true,
      );
  static dynamic refno(dynamic response) => getJsonField(
        response,
        r'''$[:].ReferenceNo''',
        true,
      );
  static dynamic eqno(dynamic response) => getJsonField(
        response,
        r'''$[:].EquipmentNo''',
        true,
      );
  static dynamic equnr(dynamic response) => getJsonField(
        response,
        r'''$[:].EQUNR''',
        true,
      );
  static dynamic objtypecode(dynamic response) => getJsonField(
        response,
        r'''$[:].ObjectTypeCode''',
        true,
      );
  static dynamic objtypedesc(dynamic response) => getJsonField(
        response,
        r'''$[:].ObjectTypeDesc''',
        true,
      );
  static dynamic statdesc(dynamic response) => getJsonField(
        response,
        r'''$[:].StatusDesc''',
        true,
      );
  static dynamic colorcode(dynamic response) => getJsonField(
        response,
        r'''$[:].ColorCode''',
        true,
      );
  static dynamic empcode(dynamic response) => getJsonField(
        response,
        r'''$[:].EmployeeCode''',
        true,
      );
  static dynamic empname(dynamic response) => getJsonField(
        response,
        r'''$[:].EmployeeName''',
        true,
      );
  static dynamic moddate(dynamic response) => getJsonField(
        response,
        r'''$[:].ModifiedDate''',
        true,
      );
  static dynamic allchild(dynamic response) => getJsonField(
        response,
        r'''$[:]''',
        true,
      );
  static dynamic all(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      );
  static dynamic eachchild(dynamic response) => getJsonField(
        response,
        r'''$[*]''',
        true,
      );
}

class GetequipmenthistoryCall {
  static Future<ApiCallResponse> call({
    String? equnr = '',
    String? urlendpoint = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'getequipmenthistory',
      apiUrl: '${urlendpoint}/Equipment/GetEquipmentChangeHistory',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'EQUNR': equnr,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetactionhistoryCall {
  static Future<ApiCallResponse> call({
    String? sourceid = '',
    String? urlendpoint = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'getactionhistory',
      apiUrl: '${urlendpoint}/Equipment/GetActionHistory',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'sourceid': sourceid,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic empname(dynamic response) => getJsonField(
        response,
        r'''$[:].EmployeeName''',
        true,
      );
  static dynamic empcode(dynamic response) => getJsonField(
        response,
        r'''$[:].EmployeeCode''',
        true,
      );
  static dynamic comment(dynamic response) => getJsonField(
        response,
        r'''$[:].Comment''',
        true,
      );
  static dynamic activityname(dynamic response) => getJsonField(
        response,
        r'''$[:].ActivityName''',
        true,
      );
  static dynamic activityaction(dynamic response) => getJsonField(
        response,
        r'''$[:].ActivityAction''',
        true,
      );
  static dynamic createddate(dynamic response) => getJsonField(
        response,
        r'''$[:].CreatedDate''',
        true,
      );
  static dynamic colorcode(dynamic response) => getJsonField(
        response,
        r'''$[:].ColorCode''',
        true,
      );
}

class GetPhotoCall {
  static Future<ApiCallResponse> call({
    String? eqno = '',
    String? urlendpoint = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'GetPhoto',
      apiUrl: '${urlendpoint}/EquipmentPhoto/getPhoto',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'eqno': eqno,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic id(dynamic response) => getJsonField(
        response,
        r'''$[:].ID''',
        true,
      );
  static dynamic fileid(dynamic response) => getJsonField(
        response,
        r'''$[:].FileID''',
        true,
      );
  static dynamic listfile(dynamic response) => getJsonField(
        response,
        r'''$[:]''',
        true,
      );
  static dynamic filesize(dynamic response) => getJsonField(
        response,
        r'''$[:].FileSize''',
        true,
      );
  static dynamic filestatus(dynamic response) => getJsonField(
        response,
        r'''$[:].FileStatus''',
        true,
      );
  static dynamic category(dynamic response) => getJsonField(
        response,
        r'''$[:].Category''',
        true,
      );
  static dynamic creatby(dynamic response) => getJsonField(
        response,
        r'''$[:].CreatedBy''',
        true,
      );
  static dynamic creatdate(dynamic response) => getJsonField(
        response,
        r'''$[:].CreatedDate''',
        true,
      );
  static dynamic modby(dynamic response) => getJsonField(
        response,
        r'''$[:].ModifiedBy''',
        true,
      );
  static dynamic moddate(dynamic response) => getJsonField(
        response,
        r'''$[:].ModifiedDate''',
        true,
      );
}

class GetAllTypeListfromJsonDataCall {
  static Future<ApiCallResponse> call({
    String? urlendpoint = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'GetAllTypeListfromJsonData',
      apiUrl: '${urlendpoint}/EquipmentType/GetAllTypeListfromJsonData',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic zone(dynamic response) => getJsonField(
        response,
        r'''$.Zone[:]''',
        true,
      );
  static dynamic subzone(dynamic response) => getJsonField(
        response,
        r'''$.Subzone[:]''',
        true,
      );
  static dynamic substation(dynamic response) => getJsonField(
        response,
        r'''$.Substation[:]''',
        true,
      );
  static dynamic bay(dynamic response) => getJsonField(
        response,
        r'''$.Bay[:]''',
        true,
      );
  static dynamic primarysecondary(dynamic response) => getJsonField(
        response,
        r'''$.Primarysecondary[:]''',
        true,
      );
  static dynamic objecttype(dynamic response) => getJsonField(
        response,
        r'''$.ObjectType[:]''',
        true,
      );
}

class GetZonefromJsonCall {
  static Future<ApiCallResponse> call({
    String? urlendpoint = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'GetZonefromJson',
      apiUrl: '${urlendpoint}/EquipmentType/GetZonefromJson',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic id(dynamic response) => getJsonField(
        response,
        r'''$[:].ID''',
        true,
      );
  static dynamic value(dynamic response) => getJsonField(
        response,
        r'''$[:].Value''',
        true,
      );
}

class GetSubZonefromJsonCall {
  static Future<ApiCallResponse> call({
    String? zone = '',
    String? urlendpoint = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'GetSubZonefromJson',
      apiUrl: '${urlendpoint}/EquipmentType/GetSubZonefromJson',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'Zone': zone,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic ingrp(dynamic response) => getJsonField(
        response,
        r'''$[:].INGRP''',
        true,
      );
  static dynamic innam(dynamic response) => getJsonField(
        response,
        r'''$[:].INNAM''',
        true,
      );
  static dynamic auartwp(dynamic response) => getJsonField(
        response,
        r'''$[:].AUART_WP''',
        true,
      );
  static dynamic zonecode(dynamic response) => getJsonField(
        response,
        r'''$[:].ZoneCode''',
        true,
      );
  static dynamic zonedesc(dynamic response) => getJsonField(
        response,
        r'''$[:].ZoneDesc''',
        true,
      );
}

class GetSubstationfromJsonCall {
  static Future<ApiCallResponse> call({
    String? subzoneINGRP = '',
    String? urlendpoint = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'GetSubstationfromJson',
      apiUrl: '${urlendpoint}/EquipmentType/GetSubstationfromJson',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'SubzoneINGRP': subzoneINGRP,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetBayCall {
  static Future<ApiCallResponse> call({
    String? substationFL = '',
    String? urlendpoint = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'GetBay',
      apiUrl: '${urlendpoint}/EquipmentType/GetBayfromJson',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'SubstationFL': substationFL,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetObjectTypeCall {
  static Future<ApiCallResponse> call({
    String? urlendpoint = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'GetObjectType',
      apiUrl: '${urlendpoint}/EquipmentType/GetObjectTypefromJson',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic objectclass(dynamic response) => getJsonField(
        response,
        r'''$[:].CLASS''',
        true,
      );
  static dynamic eqart(dynamic response) => getJsonField(
        response,
        r'''$[:].EQART''',
        true,
      );
  static dynamic objtext(dynamic response) => getJsonField(
        response,
        r'''$[:].ObjectTypeText''',
        true,
      );
  static dynamic objprefix(dynamic response) => getJsonField(
        response,
        r'''$[:].ObjectTypePrefix''',
        true,
      );
  static dynamic color(dynamic response) => getJsonField(
        response,
        r'''$[:].ColorCode''',
        true,
      );
}

class LoginCall {
  static Future<ApiCallResponse> call({
    String? userName = '',
    String? password = '',
    String? urlendpoint = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Login',
      apiUrl:
          '${urlendpoint}/ADchecker/login?userName=${userName}&password=${password}',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class CreateEquipmentCall {
  static Future<ApiCallResponse> call({
    String? fl = '',
    String? fldesc = '',
    String? eqdesc = '',
    String? manufacturer = '',
    String? modelno = '',
    String? objcode = '',
    String? objdesc = '',
    String? serialno = '',
    String? startupdate = '',
    String? baujj = '',
    String? baumm = '',
    String? countrycode = '',
    String? countryname = '',
    String? businessarea = '',
    String? costcenter = '',
    String? plannergroupcode = '',
    String? plannergroupdesc = '',
    String? mainworkcentercode = '',
    String? mainworkcenterdesc = '',
    String? uid = '',
    String? eqno = '',
    String? classheadercode = '',
    List<FFUploadedFile>? photosList,
    String? urlendpoint = '',
    String? charlist = '',
  }) {
    final photos = photosList ?? [];

    return ApiManager.instance.makeApiCall(
      callName: 'CreateEquipment',
      apiUrl:
          '${urlendpoint}/Equipment/CreateEquipment?fl=${fl}&fldesc=${fldesc}&eqdesc=${eqdesc}&manufacturer=${manufacturer}&modelno=${modelno}&serialno=${serialno}&objcode=${objcode}&objdesc=${objdesc}&startupdate=${startupdate}&constructyear=${baujj}&constructmonth=${baumm}&countrycode=${countrycode}&countryname=${countryname}&businessarea=${businessarea}&costcenter=${costcenter}&plannergroupcode=${plannergroupcode}&plannergroupdesc=${plannergroupdesc}&mainworkcentercode=${mainworkcentercode}&mainworkcenterdesc=${mainworkcenterdesc}&uid=${uid}&eqno=${eqno}&classheadercode=${classheadercode}${charlist}',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'photos': photos,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class UploadPhotoCall {
  static Future<ApiCallResponse> call({
    String? uid = '',
    String? eqno = '',
    FFUploadedFile? photo,
    String? description = 'UAT',
    String? urlendpoint = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'UploadPhoto',
      apiUrl:
          '${urlendpoint}/EquipmentPhoto/uploadPhoto?uid=${uid}&eqno=${eqno}&description=${description}',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'photo': photo,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class UploadPhotoMCall {
  static Future<ApiCallResponse> call({
    String? uid = '',
    String? eqno = '',
    List<FFUploadedFile>? photosList,
    String? description = '',
    String? urlendpoint = '',
  }) {
    final photos = photosList ?? [];

    return ApiManager.instance.makeApiCall(
      callName: 'UploadPhotoM',
      apiUrl:
          '${urlendpoint}/EquipmentPhoto/uploadPhotoM?uid=${uid}&eqno=${eqno}&description=${description}',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'photos': photos,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class DeletePhotoCall {
  static Future<ApiCallResponse> call({
    String? filename = '',
    String? urlendpoint = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'DeletePhoto',
      apiUrl: '${urlendpoint}/EquipmentPhoto/deletePhoto/${filename}',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetEquipmentBySerialNoCall {
  static Future<ApiCallResponse> call({
    String? serialNo = '',
    String? urlendpoint = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'GetEquipmentBySerialNo',
      apiUrl: '${urlendpoint}/Equipment/GetEquipmentBySerialNo',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'serialNo': serialNo,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetEquipmentBySubstationCall {
  static Future<ApiCallResponse> call({
    String? substationFL = '',
    String? urlendpoint = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'GetEquipmentBySubstation',
      apiUrl: '${urlendpoint}/Equipment/GetEquipmentBySubstation',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'substationFL': substationFL,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetCountryCall {
  static Future<ApiCallResponse> call({
    String? urlendpoint = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'GetCountry',
      apiUrl: '${urlendpoint}/EquipmentType/GetCountry',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic code(dynamic response) => getJsonField(
        response,
        r'''$[:].Code''',
        true,
      );
  static dynamic name(dynamic response) => getJsonField(
        response,
        r'''$[:].Name''',
        true,
      );
}

class GetPlannerGroupCall {
  static Future<ApiCallResponse> call({
    String? urlendpoint = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'GetPlannerGroup',
      apiUrl: '${urlendpoint}/EquipmentType/GetPlannerGroup',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic code(dynamic response) => getJsonField(
        response,
        r'''$[:].Code''',
        true,
      );
  static dynamic name(dynamic response) => getJsonField(
        response,
        r'''$[:].Name''',
        true,
      );
}

class GetMainWorkCenterCall {
  static Future<ApiCallResponse> call({
    String? urlendpoint = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'GetMainWorkCenter',
      apiUrl: '${urlendpoint}/EquipmentType/GetMainWorkCenter',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic code(dynamic response) => getJsonField(
        response,
        r'''$[:].Code''',
        true,
      );
  static dynamic name(dynamic response) => getJsonField(
        response,
        r'''$[:].Name''',
        true,
      );
  static dynamic costcenter(dynamic response) => getJsonField(
        response,
        r'''$[:].CostCenter''',
        true,
      );
  static dynamic businessArea(dynamic response) => getJsonField(
        response,
        r'''$[:].BusinessArea''',
        true,
      );
}

class GetListClassCall {
  static Future<ApiCallResponse> call({
    String? urlendpoint = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'GetListClass',
      apiUrl: '${urlendpoint}/EquipmentType/GetListClass',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic classheadercode(dynamic response) => getJsonField(
        response,
        r'''$[:].ClassHeaderCode''',
        true,
      );
}

class GetClassInfoCall {
  static Future<ApiCallResponse> call({
    String? classinfo = '',
    String? urlendpoint = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'GetClassInfo',
      apiUrl: '${urlendpoint}/EquipmentType/GetClassInfobyClass',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'Classinfo': classinfo,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic classid(dynamic response) => getJsonField(
        response,
        r'''$[:].ClassID''',
        true,
      );
  static dynamic classcode(dynamic response) => getJsonField(
        response,
        r'''$[:].CLASS''',
        true,
      );
  static dynamic classname(dynamic response) => getJsonField(
        response,
        r'''$[:].ClassName''',
        true,
      );
  static dynamic charid(dynamic response) => getJsonField(
        response,
        r'''$[:].CharID''',
        true,
      );
  static dynamic charname(dynamic response) => getJsonField(
        response,
        r'''$[:].CharName''',
        true,
      );
  static dynamic isrequired(dynamic response) => getJsonField(
        response,
        r'''$[:].IsRequired''',
        true,
      );
  static dynamic charpos(dynamic response) => getJsonField(
        response,
        r'''$[:].CharPos''',
        true,
      );
  static dynamic maxlen(dynamic response) => getJsonField(
        response,
        r'''$[:].MaxLen''',
        true,
      );
  static dynamic fieldtype(dynamic response) => getJsonField(
        response,
        r'''$[:].FieldType''',
        true,
      );
}

class GetObjectbyClassCall {
  static Future<ApiCallResponse> call({
    String? classx = '',
    String? urlendpoint = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'GetObjectbyClass',
      apiUrl: '${urlendpoint}/EquipmentType/GetObjectbyClass',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'Class': classx,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic classheadercode(dynamic response) => getJsonField(
        response,
        r'''$[:].ClassHeaderCode''',
        true,
      );
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
