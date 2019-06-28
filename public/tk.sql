SET NAMES UTF8;
DROP DATABASE IF EXISTS tk;
CREATE DATABASE tk charset=utf8;
use tk;
/**用户信息**/
CREATE TABLE tk_user(
  uid int primary key auto_increment,
  uname varchar(255),
  upwd varchar(128)
);
insert into tk_user values (null,'tom',"123");
insert into tk_user values (null,'xiaoming','123');
#创建首页轮播图1表
CREATE TABLE tk_banner1(
  bannerid int primary key auto_increment,
  banner1 varchar(255),
  href varchar(128)
);
insert into tk_banner1 values (null,'../images/section/section1/20190307092929743.jpg',0);
insert into tk_banner1 values (null,'../images/section/section1/20190316142948937.jpg',1);
insert into tk_banner1 values (null,'../images/section/section1/20190325143442530.jpg',2);
insert into tk_banner1 values (null,"../images/section/section1/20190428143345422.jpg",3);
insert into tk_banner1 values (null,'../images/section/section1/20190428143708761.jpg',4);
insert into tk_banner1 values (null,'../images/section/section1/20190505134846698.jpg',5);
#创建首页超值福利图
CREATE TABLE tk_czfl(
  czflid int primary key auto_increment,
  czflImg varchar(255),
  href varchar(112)
);
insert into tk_czfl values (null,'tk_pro_f1.jpg','javascript:');
insert into tk_czfl values (null,'tk_pro_f2.jpg','javascript:');
insert into tk_czfl values (null,'tk_pro_f3.jpg','javascript:');
insert into tk_czfl values (null,'tk_pro_f4.jpg','javascript:');

#创建首页金牌顾问
CREATE TABLE tk_jpgw(
  jpgwid int primary key auto_increment,
  jpname varchar(32),
  intro varchar(128),
  jpgwImg varchar(255),
  href varchar(128)
);
insert into tk_jpgw values (null,'吴翠香', '12年从业经验，对保险有自己独到见解，总能根据客户不同情况规划出适合的保险方案，满足客户需求','../images/section/section1/tk_icon_emp1.png','javascript:');
insert into tk_jpgw values (null,'赵钦','从业10年，专业制胜，客户服务至上，新时代保险规划师！配置家庭保障，解决家庭后顾之忧的终极目标，让所有的人都更健康，更长寿，更富足','../images/section/section1/tk_icon_emp1.png','javascript:');
insert into tk_jpgw values (null,'王园园','保险人应具有良好法律观，完善的服务品质，我秉承“爱与责任”的理念为您服务。','../images/section/section1/tk_icon_emp1.png','javascript:');
insert into tk_jpgw values (null,'刘云','懂产品、懂市场、懂搭配，一对一贴心服务，为您量身定制专业、便捷、实惠的家庭保障方案!','../images/section/section1/tk_icon_emp1.png','javascript:');

#互联网保险轮播图-产品创新
CREATE TABLE tk_hlwbx_cpcx(
  cpcxid int primary key auto_increment,
  title varchar(32),
  dtitle varchar(128),
  cpcxImg varchar(255)
);
insert into tk_hlwbx_cpcx values (null,'微医保', '2017年11月，泰康在线携手腾讯微保推出微医保，实现了医保报销限制的突破，直赔、闪赔、快赔的突破。','../images/section/section1/20180713160228428.jpg');
insert into tk_hlwbx_cpcx values (null,'泰康车险', '2017年2月28日，泰康在线发布行业首款互联网车险，旨在打造"人健康、车健康、行健康"的车险解决方案。','../images/section/section1/20180713160452604.jpg');
insert into tk_hlwbx_cpcx values (null,'微互助', ' 中国首款互联网社交保险"微互助"在泰康在线诞生，突破传统保险的收费和承保模式，最高可获得十万癌症保障。','../images/section/section1/20180713160533810.jpg');

#互联网保险轮播图-基因科技
CREATE TABLE tk_hlwbx_jykj(
  jykjid int primary key auto_increment,
  title varchar(32),
  dtitle varchar(128),
  jykjImg varchar(255)
  
);
insert into tk_hlwbx_jykj values (null,'人工智能AI', '泰康在线正致力于将智能客服机器人、人脸识别技术、智能核保技术应用于各保险领域中。','../images/section/section1/20180713160228428.jpg');
insert into tk_hlwbx_jykj values (null,'泰健康信用积分', '基于用户行为、理赔核保、健康测试、体检及智能硬件等用户健康大数据评估，核心目标在于倡导未病先防，切实降低疾病风险。','../images/section/section1/20180713160452604.jpg');
insert into tk_hlwbx_jykj values (null,'区块链', ' 泰康在线在数据共享的基础上，根据智能合约，界定用户在投保时的个人情况，通过"反飞蛾"区块链的建设，进而降低行业风险。','../images/section/section1/20180713160533810.jpg');

#互联网保险轮播图-服务生态
CREATE TABLE tk_hlwbx_fwst(
  fwstid int primary key auto_increment,
  title varchar(32),
  dtitle varchar(128),
  fwstImg varchar(255)
  
);
insert into tk_hlwbx_fwst values (null,'人工智能AI', '泰康在线正致力于将智能客服机器人、人脸识别技术、智能核保技术应用于各保险领域中。','../images/section/section1/20180713160228428.jpg');
insert into tk_hlwbx_fwst values (null,'泰健康信用积分', '基于用户行为、理赔核保、健康测试、体检及智能硬件等用户健康大数据评估，核心目标在于倡导未病先防，切实降低疾病风险。','../images/section/section1/20180713160452604.jpg');
insert into tk_hlwbx_fwst values (null,'区块链', ' 泰康在线在数据共享的基础上，根据智能合约，界定用户在投保时的个人情况，通过"反飞蛾"区块链的建设，进而降低行业风险。','../images/section/section1/20180713160533810.jpg');

#社会荣誉
CREATE TABLE tk_shry(
  shryid int primary key auto_increment,
  title varchar(128),
  shryImg varchar(255)
  
);
insert into tk_shry values (null,'刘大为接任泰康在线总经理','../images/section/section1/20180713160228428.jpg');
insert into tk_shry values (null,'泰康在线连续四年入围胡润新金融50强榜单', '../images/section/section1/20180713160452604.jpg');
insert into tk_shry values (null,'泰康在线荣获 年度最佳互联网保险公司', '../images/section/section1/20180713160533810.jpg');

#健康险-product
CREATE TABLE tk_health(
  jkxid int primary key auto_increment,
  title varchar(128),
  product_img varchar(255),
  tbage varchar(128),
  bzdate varchar(128),
  text2 varchar(128),
  text3 varchar(128),
  text4 varchar(128),
  text5 varchar(128),
  h_text1 varchar(128),
  h_text2 varchar(128),
  h_text3 varchar(128),
  h_text4 varchar(128),
  price  smallint,
  sales  int,
  comments int
);
insert into tk_health values (null,'泰无忧·百万防癌保','../images/health/5sLH075M.jpg','30天(含)-80周岁(含)','1年','三高、糖尿病、80岁均可投保；0免赔，最高可保400万','三高、糖尿病、80岁均可投保','0免赔，最高可保400万','','三高、糖尿病、80岁均可投保','0免赔，最高可保400万','','','¥85','140单','');
insert into tk_health values (null,'泰无忧·海外医疗保','../images/health/5sLH075M.jpg','30天(含)-65周岁(含)','1年','去全球顶级医院，享全程医疗服务','去全球顶级医院，享全程医疗服务','','','海外高端医院服务，最高保障600万元','','','','¥576','38单','条');
insert into tk_health values (null,'泰康康护一生重大疾病保险产品计划','../images/health/5sLH075M.jpg','30天(含)-60周岁(含)','保至70/80/90/105周岁','100种疾病，免体检最高可投45万','重大疾病(70)种+轻症(30种*赔3次)','身故保险金，满期给付保额','投保人豁免+被保人轻症豁免','70种重疾','30种轻症','身故/高残保险金','满期给付保额','¥94','8371单','1861条');
insert into tk_health values (null,'e无忧-泰康少儿重疾保','../images/health/5sLH075M.jpg','30天(不含)-17周岁(含)','1年','覆盖42种重疾+10种轻症，高达60万保额','重大疾病(42)种+保险金10-40万','轻症疾病(10种) 保险金0-20万','','最高可赔60万','每天最低仅需0.18元','无须体检，网上直投','','¥66','1476单','13条');
insert into tk_health values (null,'e无忧-泰康百万重疾保(家庭版)','../images/health/5sLH075M.jpg','30天-59周岁(含)','1年','确诊后先行最高赔付50万;后续住院治疗可最高报销50万','70种重疾+得病先赔50万，住院再保险50万','适用年龄:30天-59周岁 48元起','','百万重疾保障','重疾给付+报销','','','¥48','2876单','1289条');