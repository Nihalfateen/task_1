// class Data {
//   Data({
//       this.recid,
//       this.recno,
//       this.recdocno,
//       this.recbranchid,
//       this.branchname,
//       this.recdate,
//       this.recman,
//       this.recvalue,
//       this.recnotes,
//       this.recuser,
//       this.postacc,
//       this.vchrid,
//       this.ccid,
//       this.ccname,
//       this.paytypeid,
//       this.paytypename,
//       this.paychartid,
//       this.payref,
//       this.paynotes,
//       this.fromchartid,
//       this.rectype,
//       this.rectypename,
//       this.recdocimg,
//       this.fyear,
//       this.vochrno,
//       this.custid,
//       this.custname,
//       this.smanid,
//       this.smanname,
//       this.chartcode,
//       this.chartname,});
//
//   Data.fromJson(dynamic json) {
//     recid = json['recid'];
//     recno = json['recno'];
//     recdocno = json['recdocno'];
//     recbranchid = json['recbranchid'];
//     branchname = json['branchname'];
//     recdate = json['recdate'];
//     recman = json['recman'];
//     recvalue = json['recvalue'];
//     recnotes = json['recnotes'];
//     recuser = json['recuser'];
//     postacc = json['postacc'];
//     vchrid = json['vchrid'];
//     ccid = json['ccid'];
//     ccname = json['ccname'];
//     paytypeid = json['paytypeid'];
//     paytypename = json['paytypename'];
//     paychartid = json['paychartid'];
//     payref = json['payref'];
//     paynotes = json['paynotes'];
//     fromchartid = json['fromchartid'];
//     rectype = json['rectype'];
//     rectypename = json['rectypename'];
//     recdocimg = json['recdocimg'];
//     fyear = json['fyear'];
//     vochrno = json['vochrno'];
//     custid = json['custid'];
//     custname = json['custname'];
//     smanid = json['smanid'];
//     smanname = json['smanname'];
//     chartcode = json['chartcode'];
//     chartname = json['chartname'];
//   }
//   int recid;
//   String recno;
//   dynamic recdocno;
//   int recbranchid;
//   String branchname;
//   String recdate;
//   dynamic recman;
//   double recvalue;
//   dynamic recnotes;
//   String recuser;
//   bool postacc;
//   int vchrid;
//   dynamic ccid;
//   dynamic ccname;
//   int paytypeid;
//   String paytypename;
//   int paychartid;
//   dynamic payref;
//   dynamic paynotes;
//   int fromchartid;
//   int rectype;
//   String rectypename;
//   dynamic recdocimg;
//   String fyear;
//   String vochrno;
//   dynamic custid;
//   dynamic custname;
//   dynamic smanid;
//   dynamic smanname;
//   int chartcode;
//   String chartname;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['recid'] = recid;
//     map['recno'] = recno;
//     map['recdocno'] = recdocno;
//     map['recbranchid'] = recbranchid;
//     map['branchname'] = branchname;
//     map['recdate'] = recdate;
//     map['recman'] = recman;
//     map['recvalue'] = recvalue;
//     map['recnotes'] = recnotes;
//     map['recuser'] = recuser;
//     map['postacc'] = postacc;
//     map['vchrid'] = vchrid;
//     map['ccid'] = ccid;
//     map['ccname'] = ccname;
//     map['paytypeid'] = paytypeid;
//     map['paytypename'] = paytypename;
//     map['paychartid'] = paychartid;
//     map['payref'] = payref;
//     map['paynotes'] = paynotes;
//     map['fromchartid'] = fromchartid;
//     map['rectype'] = rectype;
//     map['rectypename'] = rectypename;
//     map['recdocimg'] = recdocimg;
//     map['fyear'] = fyear;
//     map['vochrno'] = vochrno;
//     map['custid'] = custid;
//     map['custname'] = custname;
//     map['smanid'] = smanid;
//     map['smanname'] = smanname;
//     map['chartcode'] = chartcode;
//     map['chartname'] = chartname;
//     return map;
//   }
//
// }
