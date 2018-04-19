/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.1.49-community : Database - db_diary
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_diary` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `db_diary`;

/*Table structure for table `t_diary` */

DROP TABLE IF EXISTS `t_diary`;

CREATE TABLE `t_diary` (
  `diaryId` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(60) DEFAULT NULL,
  `content` text,
  `typeId` int(11) DEFAULT NULL,
  `releaseDate` datetime DEFAULT NULL,
  PRIMARY KEY (`diaryId`),
  KEY `FK_t_diary` (`typeId`),
  CONSTRAINT `FK_t_diary` FOREIGN KEY (`typeId`) REFERENCES `t_diarytype` (`diaryTypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

/*Data for the table `t_diary` */

insert  into `t_diary`(`diaryId`,`title`,`content`,`typeId`,`releaseDate`) values (1,'加班','<p>是</p>\r\n',1,'2014-01-01 00:00:00'),(2,'我日',NULL,2,'2013-11-02 00:00:00'),(4,'我爱老婆','<p>&nbsp;的</p>\r\n',2,'2013-10-01 00:00:00'),(7,'我是一个程序猿','<p>我是一个苦逼的程序猿。。</p>\r\n',4,'2013-01-01 00:00:00'),(8,'6',NULL,1,'2013-01-01 00:00:00'),(9,'7',NULL,1,'2013-01-01 00:00:00'),(10,'8',NULL,1,'2013-01-01 00:00:00'),(11,'9',NULL,1,'2013-01-01 00:00:00'),(12,'10',NULL,1,'2013-01-01 00:00:00'),(13,'11',NULL,1,'2013-01-01 00:00:00'),(14,'12',NULL,1,'2013-01-01 00:00:00'),(15,'13',NULL,2,'2013-01-01 00:00:00'),(16,'14',NULL,2,'2013-01-01 00:00:00'),(17,'15',NULL,2,'2013-01-01 00:00:00'),(19,'苦逼的一天','<p>我</p>\r\n',2,'2014-01-09 16:42:32'),(28,'狗逼的一天ss','<p>我曹sss</p>\r\n',3,'2014-01-11 14:06:05'),(29,'只要你肯用心，遍地都是财富','<p>&nbsp; &nbsp; 世上从来不缺少财富，只是缺少发现财富的眼光。眼光从何而来？只要你肯用心，遍地都是财富。<br />\r\n　　<br />\r\n　　假如你是&ldquo;的哥&rdquo;，在医院门口看见两个人同时向你招手，一个手里拿着药，另一个手上拿着脸盆，你会接哪个上车？可能有人会说，当然是就近原则，谁离得近就让谁上车。上海有个&ldquo;的哥&rdquo;叫臧勤，他说应该接手上拿脸盆的人，理由很简单：手上拿药的人多半是小病小痛，不会跑到离家太远的地方去看病，而拿脸盆的人一定是住院的，路程通常会更远，同样是拉一趟客，收入却相差悬殊。<br />\r\n　　臧勤被称为&ldquo;神奇的哥&rdquo;，他在上海开了17年出租车，原本默默无闻，直到几个月前，他遇到了一位特殊乘客，才广为人知。<br />\r\n　　一天中午，臧勤在上海美罗大厦门口接到一位乘客，车子刚起步，他就跟乘客热情地聊了起来，&ldquo;终于被我守到你了，从写字楼里出来的，肯定路程不短。&rdquo;乘客一愣，自己的确要去机场，&ldquo;你怎么知道？&rdquo;他说，&ldquo;我看一个人只要3秒钟，那些在超市门口、地铁口打车，穿睡衣的人可能去机场吗？机场也不会让他们进去啊&hellip;&hellip;&rdquo;乘客不由得兴致大增，请他继续往下说。<br />\r\n　　臧勤举了一个例子：&ldquo;有一次，我在人民广场看到三个人在前面招手：第一个是年轻女子，拿着小包，刚买完东西；中间是一对青年男女，一看就是逛街的；第三个是穿羽绒服的青年男子，手上还提着笔记本电脑。我毫不犹豫地把车开到了羽绒服面前，那人上了车也觉得奇怪，说你为何放弃前面两个不接，偏偏开到我面前？我说，第一个女孩子是中午溜出来买东西的，估计公司很近；中间那对情侣是游客，没拿什么东西，不会去很远。羽绒服竖起大拇指说，你说对了，我去宝山。<br />\r\n　　&ldquo;我做过精确统计，我每天开17个小时的车，算上油费和各种费用，平均每小时的成本为34.5元。如果上来一个10元的起步价，大约要开10分钟，加上每次载客之间的平均空驶时间7分钟，等于是我花了17分钟只赚了10元钱，而17分钟的成本价是9.8元，不划算，20元到50元之间的生意性价比最高。&rdquo;乘客听得瞠目结舌，五体投地，心想今天遇上了奇人，这哪像个出租车司机，成本竟然精确到了每分钟，分明就是个成本核算师。<br />\r\n　　说话间车子已到了机场，乘客下车时，特意留下了他的电话。那位乘客名叫刘润，是微软中国公司全球技术支持部的部门经理，事后他在自己的博客上写道：&ldquo;臧勤给我上了一堂生动的MBA课！&rdquo;不久后，刘润邀请臧勤为微软公司的50名员工讲了一堂课，45分钟的演讲被掌声打断了8次。&ldquo;神奇的哥&rdquo;臧勤由此成名，先后又接受了多家企业的讲课邀请。<br />\r\n　　上海的出租车司机平均月收入在3000元左右，而臧勤每月的收入是8000元。刚开始，几乎所有同行都认为臧勤在吹牛，他又没有三头六臂，每天也得吃饭睡觉，收入怎么可能如此悬殊？有人专门到出租车公司查了他一年的营业纪录，才不得不信。臧勤把开出租车当成了事业来做，每天都仔细观察，用心总结，久而久之便练就了火眼金睛，空载率极低，效率自然比别人高出许多。<br />\r\n　　有道是，三百六十行，行行出状元。臧勤是当之无愧的&ldquo;的哥&rdquo;状元。&ldquo;神奇的哥&rdquo;其实并不神秘，不过是做事比别人更用心，仅此而已。世上从来不缺少财富，只是缺少发现财富的眼光。眼光从何而来？只要你肯用心，遍地都是财富。&nbsp;</p>\r\n',4,'2014-01-12 23:58:10'),(30,'躲进小窝想念你（小黑熊）','<p>　亲吻过你的狠心，懂得了退后。<br />\r\n　　<br />\r\n　　习惯性地打开老旧的音乐播放器，仰头面向灰白的天花板，独自学着去遗忘一些人，一些事。<br />\r\n　　<br />\r\n　　或许故事褪掉色彩才会令人悲哀，而有些悲剧的色调终归擦不去，抹不掉。为你翘课，你偏说是孩子气；为你痴情，你就说是花心，你轻蔑的拒绝，换取了你的自由，抹杀了我的微笑。<br />\r\n　　<br />\r\n　　橱窗外，我终归是太天真，天真得像木偶戏里的娃娃，所有的快乐和悲伤难以拒绝，一切都交由你决定。黑夜如期而至，我躲进凌乱却又很温馨的小窝，侧卧在棉被里，紧闭双眼，却依旧挂念你。有时迟迟不敢睁开双眼，因为惧怕见到不如意的现实，因为这些现实往往让人流泪；因为害怕见到偶尔经过的流星，因为你曾经像流星一样闪现在我的天空，却划得那么深、那么疼。<br />\r\n　　<br />\r\n　　音乐声停了，思绪也止了，想要伸手掀开明天的窗帘，而内心却害怕明天的空气里没有你的味道。不想假装坚强，潦草地书写了短信，发送到你的夜色里。我知道这条短信走的是一条单行道，因为你的回复一直是沉默。<br />\r\n　　<br />\r\n　　小窝里好温暖，好自由，至少在这里我不怕被谁伤害。叼起根烟，却不敢放进嘴巴里，烟草的味道只会让我更加孤独。傻傻地望着了了的火星，望着烟草一点一点地燃尽，有种感觉我终于明白，那叫做欲哭无泪。<br />\r\n　　<br />\r\n　　不久之后就要各奔东西，我没有什么能交给你，最好的礼物可能就是不去接近你。而你在这几年里，留给了我多少快乐，多少伤害，我一一留下，留在这座城市。<br />\r\n　　<br />\r\n　　不想再去触及往事，或许纪念过去的最好方式是飞往一片有梦有理想的天堂。拒绝伤害，拒绝悲伤，转身之后生活更加精彩。<br />\r\n　　<br />\r\n　　你好，今晚我们梦里说再见。说完再见，永远不见。<br />\r\n　　<br />\r\n　　躲进小窝，不再想念你，只是拍着自己的肩膀许下了愿望，祝你幸福，祝我快乐。<br />\r\n　　<br />\r\n　　说好了将要离开这座城市，说好了缘分尽时不相见。于是你不见了，我不见了，你把你的模样装进我的行囊，我把我的泪水吞进肚里。</p>\r\n',4,'2014-01-12 23:59:42'),(31,'似水流年的爱','<p>　似水流年的爱<br />\r\n　　<br />\r\n　　花开花落，云卷云舒，风云突变，异事横空。<br />\r\n　　<br />\r\n　　繁华似锦，纯白无暇，动荡世间，安身何方？<br />\r\n　　<br />\r\n　　----题记<br />\r\n　　<br />\r\n　　幕起<br />\r\n　　<br />\r\n　　芸芸众生之间，无人不想当神仙好长生不老，却不知神仙之苦、之烦、之闷。身为天宫的凝霜仙子，不仅是王母玉帝的亲侄女，二郎神的亲表妹，太上老君最疼爱的小弟子，还是掌管人间风雨雪的使者。<br />\r\n　　<br />\r\n　　我厌倦了天宫的生活，想去凡间走一遭，可是天规不让，无奈我只好另想办法逃走了。<br />\r\n　　<br />\r\n　　过几天就是蟠桃大会了，那时可容易下凡了。不是我自夸，拥有绝色容貌的我是一个冰雪聪明人见人爱花见花开，调皮可爱的才女。我的功夫也很厉害哦！（是真功夫，不是法术）<br />\r\n　　<br />\r\n　　1最美醉天下<br />\r\n　　<br />\r\n　　&ldquo;众仙家，后天就是蟠桃会了，你们节目准备的怎样？&rdquo;玉帝面带微笑地说。<br />\r\n　　<br />\r\n　　&ldquo;凝霜，你在想什么啊？怎么笑得这么开心。&rdquo;我当不会告诉你我在想逃跑计划了。&ldquo;没有啊！我是替王母开心呢！&rdquo;凌霄宝殿上，众人都是眉开眼笑。<br />\r\n　　<br />\r\n　　&ldquo;二郎表哥，人间好玩吗？我常听你说起人间的事，我好想知道啊，你告诉我好吗......&rdquo;时间不知不觉就过去了，蟠桃会你终于来了！<br />\r\n　　<br />\r\n　　哈哈！我真是太聪明了，我终于来到凡间了。<br />\r\n　　<br />\r\n　　哇晒，凡间真是太好了，到处琳琅满目，我要去逛了耶！（真是对你无语了，再怎么没见过也不用这样吧！你可是仙子啊，注意形象形象......）吃过了玩过了现在又要去哪里了？还有哪好玩啊？都怪师父、要不是他找二郎表哥，表哥也不会给我讲到一半就走了，害我现在都不知道该去哪了。随便走吧，走到哪里算那。一路上真是烦死了，凡人都没见过美女啊！这样盯着我看人家会不好意思的！不理会他们的眼光我继续朝前走去。为了方便行走我化身为一名男子，就这样女扮男装的游戏开始了。走着走着便来到了烟雨楼。门口有许多风尘女自在拉拢人，我不由自主的感叹了一声。真是倒霉、在人群中我也被人流挤了进去，还被那些人给硬了拉进去。进去就进去吧还被小偷光顾了，身上一分钱也没有，这可怎么出去啊！对了溜走。可惜上天不可怜我，被老鸨给抓住了.<br />\r\n　　<br />\r\n　　&ldquo;看你小子眉清目秀的来我们这地方也敢吃白食，来人啊，你们两个给我搜搜看他身上有没有值钱的东西。&rdquo;<br />\r\n　　<br />\r\n　　&ldquo;是&rdquo;<br />\r\n　　<br />\r\n　　&ldquo;等等，可不可以不让他们搜啊，还是你搜吧！&rdquo;（毕竟人家是女孩子，怎么能让男人搜身呢）<br />\r\n　　<br />\r\n　　&ldquo;看来老娘我还是光彩不减当年啊！这帅小伙也喜欢让我来搜身。好吧，你们俩把他绑住，以防他逃跑&rdquo;<br />\r\n　　<br />\r\n　　&ldquo;是&rdquo;<br />\r\n　　<br />\r\n　　&ldquo;呵呵，原来是个姑娘啊！怪不得哦，你呀、就留在我们这里吧，卖艺还债。你们带她去房间换一套女装，打扮一下再带她下来见我。&rdquo;<br />\r\n　　<br />\r\n　　换好了衣服，我得想办法逃走啊，于是我对那两个人说&ldquo;两位大哥你们放了我吧，我出去以后一定好好报答你们......&rdquo;<br />\r\n　　<br />\r\n　　&ldquo;你最好老实点，放你，笑话，放了你我们工作就没了，走吧，去见老板娘，快点，别磨蹭。&rdquo;<br />\r\n　　<br />\r\n　　&ldquo;哦！原来是一个美女啊！妈妈我好好栽培你一定能让你在这地方当上花魁。&rdquo;<br />\r\n　　<br />\r\n　　&ldquo;我才不稀罕呢，那我什么时候才能离开啊？&rdquo;（本姑娘想走现在就能走，只是不想欠别人，要是使用法术逃走，天庭一定会知道的，到时就不能在凡间玩了，好吧，本姑娘等还清债就走）</p>\r\n',4,'2014-01-13 00:01:17'),(32,'B哥','<p>A</p>\r\n',4,'2014-01-13 00:05:40'),(33,'苍老师','<p>B</p>\r\n',4,'2014-01-13 00:07:49'),(34,'程序猿','<h2>1<a name=\"1\"></a><a name=\"sub2321426_1\"></a>名词解释</h2>\r\n\r\n<p>是一种近几十年来出现的新物种，是信息革命的产物，在行为和物种归类上我们也可称为<strong>码字猴</strong>。程序猿是</p>\r\n\r\n<p><a href=\"http://baike.baidu.com/picview/2321426/2321426/0/d57e999477b39479d31b707e.html\" target=\"_blank\"><img alt=\"\" src=\"http://d.hiphotos.baidu.com/baike/s%3D220/sign=439e9fa1a7efce1bee2bcfc89f50f3e8/d0c8a786c9177f3eb478205a70cf3bc79f3d561d.jpg\" style=\"height:120px; width:220px\" /></a></p>\r\n\r\n<p>人类在科技研究上的一种新兴进化，拥有无与伦比的耐力、超越时代的智商、横穿社会的苦逼相和低于人类平均寿命的显著特点。</p>\r\n\r\n<p><a href=\"http://baike.baidu.com/view/2321426.htm\" target=\"_blank\"><strong>程序猿</strong></a>(<a href=\"http://baike.baidu.com/view/5230799.htm\" target=\"_blank\">Code Monkey</a>)是一种非常特殊的、可以从事程序开发、维护的动物。一般分为程序设计猿和程序编码猿，但两者的界限并不非常清楚，都可以进行开发、维护工作，特别是在<a href=\"http://baike.baidu.com/view/61891.htm\" target=\"_blank\">中国</a>，而且最重要的一点，二者都是一种非常悲剧的存在。</p>\r\n\r\n<p>另，可以理解为&rdquo;程序员&ldquo;的无奈的自我称呼。</p>\r\n\r\n<p>节日</p>\r\n\r\n<p><a href=\"http://baike.baidu.com/view/678458.htm\" target=\"_blank\">平年</a>的9月13日和<a href=\"http://baike.baidu.com/view/29649.htm\" target=\"_blank\">闰年</a>的9月12日（每年的第256天）是<a href=\"http://baike.baidu.com/view/4367098.htm\" target=\"_blank\">程序员节</a>。之所以选择256，是因为它是一个8位字节能够表示的数目，256是2的幂中小于365的<a href=\"http://baike.baidu.com/view/42187.htm\" target=\"_blank\">最大值</a>。同样的<a href=\"http://baike.baidu.com/view/1838.htm\" target=\"_blank\">逻辑</a>，在24位RGB颜色空间里，最大值为十六进制0xFFFFFF，表示为<a href=\"http://baike.baidu.com/view/121097.htm\" target=\"_blank\">白色</a>，又称白色程序猿节。</p>\r\n\r\n<h2>2<a name=\"2\"></a><a name=\"sub2321426_2\"></a>特点</h2>\r\n\r\n<p><strong>总结而言，一只优秀的程序猿通常有以下特点：</strong></p>\r\n\r\n<p>【PMonkey】对技术充满JI情（因为能够得到香蕉）</p>\r\n\r\n<p>将编程作为一种爱好（不一定，只有少数的程序猿有这一素质） 如果你允许会滔滔不绝地跟你谈论技术（程序猿使用特殊的语言，别的人或猴子很难听懂）</p>\r\n\r\n<p>【PMonkey】有过个人的开发经历（独立的寻找过香蕉或追寻母猿）</p>\r\n\r\n<p>坚持认为某种技术最好（程序猿都很固执）</p>\r\n\r\n<p>如果让他用他认为不好的技术他会非常别扭（同上）</p>\r\n\r\n<p>聪明、健谈、兴趣广泛（只限于NEET和有关宅话题）</p>\r\n\r\n<p>在大学和工作前就开始接触程序（程序猿从小就是程序猿了）</p>\r\n\r\n<p>总而言之，程序猿和它的一些同种族（如网管猿，技术猿）一样，都是人类用来帮助提高生产力的家畜，由于许多程序猿的智力很高，所以经常自己去寻找香蕉或妹子而无心工作，但这只是个别现象，总体来说程序猿是一种对人类很有用的动物，它们工作时很勤劳，而且不像 业务猿 那样喜欢跳奇怪的舞蹈（也叫增猿舞）吵的人们<a href=\"http://baike.baidu.com/picview/2321426/2321426/0/0b46f21fbe096b63c56878d30c338744ebf8ac3b.html\" target=\"_blank\"><img alt=\"夜晚较为活动之物种对照图\" src=\"http://d.hiphotos.baidu.com/baike/s%3D220/sign=92c79465277f9e2f74351a0a2f31e962/0b46f21fbe096b63c56878d30c338744ebf8ac3b.jpg\" style=\"height:168px; width:220px\" /></a></p>\r\n\r\n<p>夜晚较为活动之物种对照图</p>\r\n\r\n<p>想<a href=\"http://baike.baidu.com/view/184847.htm\" target=\"_blank\">鬼畜</a>它，程序猿一般到了30岁左右就会进化成别的猿类（一般是管理猿），不过据报道，也有一些少数一生都是没有母猿的悲剧程序猿。</p>\r\n\r\n<p>程序猿是被诅咒的悲惨生物，它们受到的诅咒有：过度的劳作、永远不足的睡眠、低廉的收入等等&hellip;&hellip;</p>\r\n\r\n<p>程序猿并不擅长战斗，它们生活中最主要的活动是&mdash;&mdash;在树叶上打洞，然后将打洞的树叶放进一个木盒子里念咒语，并声称那些是能够提高族群的食物供给或提供其他神奇功能的伟大产品。但是，因为每个程序猿打洞的方式各不相同，他们之间也会经常爆发冲突，每个程序猿都声称自己所用的打洞方式是最好最先进，打出的洞是最美最华丽的，并不惜因此用打洞的树叶互相投掷。根据一些冒险者收集到的程序猿族群的资料，所谓的打洞方式，有西珈岬式、<a href=\"http://baike.baidu.com/view/90350.htm\" target=\"_blank\">爪哇</a>式、希沙埔式等等。不过，令人惊异的是，虽然每个程序猿所用的打洞方式都不同，但它们能用几乎所有的方式来给树叶打洞，来表达&ldquo;你好，世界&rdquo;的意思&hellip;&hellip;</p>\r\n\r\n<p>因为长时间的不运动，程序猿的体力普遍低下，不擅长<a href=\"http://baike.baidu.com/view/126371.htm\" target=\"_blank\">近战</a>。不过，它们的高超智力弥补了这个缺陷。投掷打洞树叶是它们常用的攻击方式，而且，一如它们所宣称的一样，那些树叶有着一些神奇的功能&mdash;&mdash;很多冒险者在受到树叶攻击后，虽然受伤并不严重，但都不同程度表现出反应迟缓、四肢不听指挥、眼前一片蓝色等症状，甚至于昏迷不醒。不过，好在这些症状都不致命，但是这足以保护程序猿远离冒险者的侵扰。</p>\r\n\r\n<p>程序猿只为了保护栖息地才会战斗，因此，一般冒险者都会绕开它们的地界。而且，由于程序猿的智力达到了能和冒险者交流的程度，甚至有的冒险者和程序猿族群建立了良好的关系，并且得到了它们的打洞树叶作为向族群提供食物的交换&mdash;&mdash;只是这些礼物在冒险者手上远不如在程序猿手上可靠&hellip;&hellip;</p>\r\n\r\n<h2>3<a name=\"3\"></a><a name=\"sub2321426_3\"></a>开场白</h2>\r\n\r\n<p>如果人生是自我编写的程序，那么青春就是其中意味深长的代码。或简单，分解成彼此独立的字符；或复杂，拼凑成一连串的神秘语句。程序猿尝试着不断调试，不断优化，无论编译结果如何，过程才是最美。如果说代码不能复制，那么袁袁们愿意用一生去续写...</p>\r\n\r\n<h2>4<a name=\"4\"></a><a name=\"sub2321426_4\"></a>社会结构</h2>\r\n\r\n<p>成群，一般2～10程序猿组成一个小组，数个小组合成一个团队。</p>\r\n\r\n<h2>5<a name=\"5\"></a><a name=\"sub2321426_5\"></a>日常行为</h2>\r\n\r\n<h3><a name=\"5_1\"></a><a name=\"sub2321426_5_1\"></a>准备工作</h3>\r\n\r\n<p>&ldquo;工欲善其事必先利其器。&rdquo;</p>\r\n\r\n<p>1.电脑不一定要配置高，但是双屏是<a href=\"http://baike.baidu.com/view/1461853.htm\" target=\"_blank\">必须的</a>，越大越好，能一个横屏一个竖屏更好。一个用来查资料，一个用来写<a href=\"http://baike.baidu.com/view/41.htm\" target=\"_blank\">代码</a>。总之要显得信息量很大，效率很高。</p>\r\n\r\n<p>2.椅子不一定要舒服，但是一定要可以半躺着。</p>\r\n\r\n<p>3.大量的<a href=\"http://baike.baidu.com/view/543118.htm\" target=\"_blank\">便签</a>，各种的颜色的，用来记录每天要完成的事务，多多益善。沿着电脑屏幕的边框，尽量贴满，显出有很多事情的样子。</p>\r\n\r\n<p>4.工具书，orelly的，机械工业，电子工业什么的都可以，能英文就英文，不行影印版的也可以，反正越厚越好，而且千万不要放在书架上，一定要堆在桌上，半打开状。</p>\r\n\r\n<h3><a name=\"5_2\"></a><a name=\"sub2321426_5_2\"></a>从进门开始</h3>\r\n\r\n<p>1.着装！着装！不管你是去实验室，或者去公司的大楼，在或者是小公司的民宅，或是自己创业的黑作坊；无论是春夏秋冬白天晚上刮风下雨电闪雷鸣台风龙卷风，一个装b的程序员必须要十分在意自己着装！这里只提出参考建议。初级装：衬衣+牛仔裤+休闲鞋。中级装：T恤+宽松短裤+拖鞋。高级装：背心+宽松大花裤衩+人字拖。</p>\r\n\r\n<p>2.得体的举止。在走廊以及任何形式的过道里，一定要双手插兜，走得像个痞子，至少要看起来有点反社会，如若不行，可走文弱天才型geek路线。。</p>\r\n\r\n<p>3.如果有女性在你背后指指点点，小声嘀咕说这一定是一个技术男的时候，应该先低头，然后保持低头状态，缓缓回头，坏坏地蔑笑但是不要出声，然后快步前行。</p>\r\n\r\n<p>4.进门后，一定不要跟任何人打招呼，笔直走向自己的位置，最多路过打一杯咖啡，千万不要有多余的动作，显示出自己的专注与<a href=\"http://baike.baidu.com/view/90400.htm\" target=\"_blank\">心无旁骛</a>。</p>\r\n\r\n<h3><a name=\"5_3\"></a><a name=\"sub2321426_5_3\"></a>坐下就不要再动</h3>\r\n\r\n<p>1.坐下以后，姿势需要略微后仰，能翘着二郎腿最好了，然后在后仰的情况下<a href=\"http://baike.baidu.com/view/8481650.htm\" target=\"_blank\">低着头</a>，以便看到屏幕，然后千万就不要再动了。</p>\r\n\r\n<p>2.粗暴地把电脑前的大堆书推开一个口，然后摘下电脑上的一个便签，看一眼，不过3秒，可以开始coding了。</p>\r\n\r\n<p>3.能不用IDE就不要用，实在装不了，无论IDE是什么，一定要调成DOS那种黑色背景的。</p>\r\n\r\n<p>4.如果写前台界面，就不停地调试后台代码；如果写java，就在里面混编C；如果写C，就在里面混编汇编。不光要coding，还要时不时的翻出一本什么英文的书翻一翻，看不懂就看看插图，然后扔到面前假装懂了继续coding。</p>\r\n\r\n<p>5.什么看起来高端就用什么，不要管实用不实用。例如对C++：switch统统重构成多态；如果有指针，统统改成智能的；C++一定要自己写 template；数字是全部要替换成宏的名字能起多长就起多长；struct就不要出现了，如果出现，也一定要用__attriburte__修饰一下；运算都是位操作的；操作符都是重载的；网络都是并发缓冲线程池的；int只用int32_t声明的;继承不用普通的，什么多继承虚继承啊；helloworld也要写捕获异常的；后人一看代码，中间一堆关键字 extern,asm,auto,XXXXX_cast,volatile,explicit,register,template，让一般总在敲 int,if,else,for的小<a href=\"http://baike.baidu.com/view/39175.htm\" target=\"_blank\">程序员</a>顿时心生崇拜。</p>\r\n\r\n<p>6.注释？算了吧。只有两个路线可以选：一，变量名起得巨长无比，看代码就和读英文文章一样顺畅，根本不需要加注释。 二，代码无比晦涩，加不加注释根本无影响。</p>\r\n\r\n<p>7.千万不要用IM工具交流，千万不要问同事问题，显得自己没有水平，都是自己上网或者查书。</p>\r\n\r\n<p>8.无论是同事间开玩笑或者发生任何群体性时间，不要抬头，更不要东张西望，即使地震火灾，也一定要先提交代码再行离开。</p>\r\n\r\n<h3><a name=\"5_4\"></a><a name=\"sub2321426_5_4\"></a>潇洒地离开</h3>\r\n\r\n<p>1.人走，主机是千万千万不能关的，至少要跑个daily build，实在不行正在svn提交也勉强算过关。</p>\r\n\r\n<p>2.书应该已经又堆到屏幕前了，千万不要整理，明天再来推开。</p>\r\n\r\n<p>3.不强求最后一个走，但一定要所有的非程序员，什么市场啊前台啊pm啊都<a href=\"http://baike.baidu.com/view/6240093.htm\" target=\"_blank\">走光</a>了，才可以走。</p>\r\n\r\n<p>4.走得时候一定要率性，千万不要收拾任何东西，站起来，出门，好的，就这样。</p>\r\n\r\n<p>5.如果今天一定要说句话的话，找到那个最<a href=\"http://baike.baidu.com/view/4259084.htm\" target=\"_blank\">苦逼</a>的<a href=\"http://baike.baidu.com/view/39175.htm\" target=\"_blank\">程序员</a>，跟他说，你进度太慢了啊，不要老让我等你。</p>\r\n\r\n<h3><a name=\"5_5\"></a><a name=\"sub2321426_5_5\"></a>作息时间</h3>\r\n\r\n<p>每天早上08:00～11:30 进入车间堆代码。</p>\r\n\r\n<p>中午11:30～13:00进食，放风时间。</p>\r\n\r\n<p>下午13:00～18:00进入车间堆代码。</p>\r\n\r\n<p>大部分的程序猿 在18:00以后继续堆代码，一直到深夜。</p>\r\n\r\n<p>大部分的程序猿需要加班，经常加班，白加班。</p>\r\n\r\n<p>所谓生命不息，加班不止 是他们的座右铭。</p>\r\n\r\n<h2>6<a name=\"6\"></a><a name=\"sub2321426_6\"></a>有关笑话</h2>\r\n\r\n<p>1、新春对联上联：为系统而生，为框架而死，为debug奋斗一辈子下联：吃符号的亏，上大小写的当，最后死在需求上！横批：杯具程序员。</p>\r\n\r\n<p>2、为什么程序员总是分不清万圣节和圣诞节？因为 Oct 31 == Dec 25。</p>\r\n\r\n<p>3、男：我是程序猿。</p>\r\n\r\n<p>女：哦，程先生，你好。</p>\r\n\r\n<p>男：客气了，叫我序猿就好~</p>\r\n\r\n<p>4、我是你的什么，你是我的程序猿，啊？？原来我是猴子啊，<a href=\"http://baike.baidu.com/view/23542.htm\" target=\"_blank\">酱紫</a>我就可以让你耍coding啦！！！</p>\r\n\r\n<p>5、怎么使用面向对象的方式变得富有？继承。</p>\r\n\r\n<p>6、一男子在路边一根接着一根地抽烟。一个女士走过来对他说：&ldquo;嘿，你不知道你是在慢性自杀吗？注意看看烟盒上的警告信息。&rdquo;&ldquo;没关系&rdquo;，男子悠然自得地又吸了一口：&ldquo;我是个程序猿。&rdquo;&ldquo;嗯？这和你是程序猿有什么关系？&rdquo;&ldquo;我们一点儿也不在乎警告（warning），我们只在乎错误（error）。&rdquo;</p>\r\n\r\n<p>7、问：程序员最讨厌康熙的哪个儿子。答：胤禩。因为他是八阿哥（bug）。</p>\r\n\r\n<p>8、换一个电灯泡需要几个程序员？一个也不要，这是硬件问题</p>\r\n\r\n<p>9、危楼高百尺，手可写代码；举头望明月，低头写代码；王师北定中原日，家祭无忘写代码；</p>\r\n\r\n<p>10、孤帆远影碧空尽，唯见代码眼前流</p>\r\n\r\n<p>11、声卡凄切，对电脑晚，检查初歇。 项目需求无绪，可恨处，邮件催发。 执手相看代码，竟无语凝噎。 念去去千行代码，眼皮沉沉电脑破。 多情自古源代码，更那堪，冷落情人节，今宵酒醒何处。电脑旁，晓风残月，此去经年，爱情硬是形同虚设。 便纵有千般无奈，更与何人说？</p>\r\n\r\n<p>12、你只看到我在不停的忙碌，却没看到我奋进的热情，你有你的朝九晚五，我有我的通宵达旦，我可怜你体会不了执行出结果的那种成就感。Code是注定痛苦的旅行...</p>\r\n\r\n<p>13、一句话证明你爱过！ 《我不愿让你一个人写代码&hellip;&hellip;》 不服来辩</p>\r\n\r\n<p>14、我是一个搬砖狂，搬砖本领强。。总有一天心血来潮，倒在砖头旁。。。</p>\r\n\r\n<p>15、漫道coding无悔不，养家糊口故。年华虚度，青春总被bug误。望断吊丝路，有女神，不得护。 默忆少年游无度，心怀天下牧。流年暗促，胸中豪情不堪负。风华又起时，不忍顾，年娇处。</p>\r\n\r\n<p>16、一个MD5函数吃惊地指着另一个MD5函数说：&ldquo;你的哈希结果为什么和我的不一样？&rdquo; 那个MD5函数骄傲地说，&ldquo;我喂自己袋盐。&rdquo;</p>\r\n\r\n<p>17、昨天，一位男生向他心仪的程旭媛妹纸送了一份写的16万行代码的程序。这份程序包括嵌入式、JAVA、C++等多种语言，内容主要是回忆两人在一起做的课设和借景抒怀。他将其做成Repo并commit到Github上，取名《我不愿让你一个人写代码》。妹纸十分感动，然后拒绝了他</p>\r\n\r\n<p>18、bug众多，今胜昨，回调长似秋千索。溢出栈，抛异常，码至凌晨，咽泪妆欢，难难难！</p>\r\n\r\n<p>19、少年投身IT行，老来无伴又何妨。擦肩美女不屑看，三千码友在身旁。</p>\r\n\r\n<p>20、夜半话凄凉，转眼泪千行，日日工期紧，亦为重构忙。久易无定论，命悬需求方，四顾前途路，一步三踉跄。</p>\r\n\r\n<p>21、白发三千丈，coding泪两行，不识加班累，只缘bug狂。</p>\r\n\r\n<p>22、幸得进某康，IT放两旁，闲来把码敲，余音仍绕梁。码农压力大，愿君更健康！</p>\r\n\r\n<p>23、少时狂发编程想，无畏赴身IT行。纵使荣华未可近，我自coding又何妨！</p>\r\n\r\n<p>24、 夜夜搞项目，敲码三四点。郁郁无头绪，哽咽等天亮。放手搏一搏，程序全报错。妹子人家牵，bug自己查。方法属性类，一个都不会。左右不是人，猿来程序员。</p>\r\n\r\n<p>25、无数假期渺茫茫，夜三更，bug调出千百行；香烟一半，犹如饥渴似疯狂。抬起头颅，细数窗前星光，人生历历何等惆怅；思量思量，日何已出，为何希望依久不晴朗！</p>\r\n\r\n<p>26、 年少太轻狂，误入IT行。白发森森立，两眼直茫茫。语言数十种，无一称擅长。三十而立时，无房单身郎。</p>\r\n\r\n<p>27、年少不经事，埋头编程忙。 指键铿锵落，不及细思量。 bug千百个，comment无一行。 休言敏捷易，做来断人肠。</p>\r\n\r\n<p>28、在那山的这边海的那边有一群苦逼的程序员</p>\r\n\r\n<p>他们老实又胹腆 　他们聪明又木钱 　他们一天到晚坐在那里熬夜写软件 　饿了就咬一口方便面～～ 　哦苦逼的程序员 　哦苦逼的程序员 　只要一改需求他们就要重新搞一遍 　但是期限只剩下两天</p>\r\n\r\n<p>29、十年生死两茫茫，写程序，到天亮。 千行代码，Bug何处藏。 纵使上线又怎样，朝令改，夕断肠。 领导每天新想法，天天改，日日忙。 相顾无言，惟有泪千行。 每晚灯火阑珊处，程序员，又加班,工作狂~</p>\r\n\r\n<p>30、写字楼里写字间，写字间里程序员； 程序人员写程序，又拿程序换酒钱。 酒醒只在网上坐，酒醉还来网下眠； 酒醉酒醒日复日，网上网下年复年。 但愿老死电脑间，不愿鞠躬老板前； 奔驰宝马贵者趣，公交自行程序员。 别人笑我忒疯癫，我笑自己命太贱； 不见满街漂亮妹，哪个归得程序员。</p>\r\n\r\n<p>31、当代的程序员，其实就是远古的巫师。他们通过一些普通人不理解的符号和语法，与某个世界的自然法则相沟通，进而实现人类需要的奇迹</p>\r\n\r\n<p>32、程序员问禅师：&ldquo;我和在一起 7年的女友分手了，程序员是否诸多和爱情无缘?&rdquo;</p>\r\n\r\n<p>禅师笑而不语，把程序员带到正在比赛的球场。</p>\r\n\r\n<p>程序员大悟：&ldquo;大师的意思是否是说：爱情的意义就像一场比赛，只要过程努力过，结果如何并不重要?&rdquo;</p>\r\n\r\n<p>大师闭上眼睛道：&ldquo;你分手关我球事?&rdquo;</p>\r\n\r\n<p>33、当世界末日还有5分钟就要到来的时候</p>\r\n\r\n<p>程序员: 让我们在这最后的时刻作些什么吧!</p>\r\n\r\n<p>女友: 那好,让我们在做最后一次吧!</p>\r\n\r\n<p>程序员: 那剩下的4分50秒做什么啊?</p>\r\n\r\n<p>34、一个程序员骑着一个很漂亮的自行车到了公司，另一个程序员看到了他，问到，&ldquo;你是从哪搞到的这么漂亮的车的？&rdquo;</p>\r\n\r\n<p>骑车的那个程序员说，&ldquo;我刚从那边过来，有一个漂亮的姑娘骑着这个车过来，并停在我跟前，把衣服全脱了，然后对我说，&lsquo;你想要什么都可以&rsquo;&rdquo;。</p>\r\n\r\n<p>另一个程序员马上说到，&ldquo;你绝对做了一个正确的选择，因为那姑娘的衣服你并不一定穿得了&rdquo;。</p>\r\n\r\n<p>35、我也不知道为什么，我一说我是搞PHP的，她们就把灯都灭了。</p>\r\n',4,'2014-01-13 00:14:50'),(35,'网游程序员转行卖烧饼 买房买车娶绝对领域美女妹纸','<p>近日，网上爆红的一段视频让码代码的程序员再次进入网友的视线，在这个拍客视频里，拍客拍到：原来在一家网游公司辛苦工作的高级程序员，因为身体原因离开网游公司，转行卖烧饼，不仅在深圳买房买车，还娶了个漂亮老婆&ldquo;烧饼西施&rdquo;，可谓财色兼收，让原来的兄弟艳羡不已。<br />\r\n<br />\r\n<br />\r\n<br />\r\n<img src=\"http://imgsrc.baidu.com/forum/w%3D580%3Bcp%3Dtieba%2C10%2C635%3Bap%3Dloli%BF%D8%B0%C9%2C90%2C643/sign=ea2429208d5494ee87220f111dce838e/4844bc003af33a87f0aaa885c75c10385143b5e3.jpg\" style=\"height:644px; margin-top:8px; width:560px\" /><br />\r\n<img src=\"http://imgsrc.baidu.com/forum/w%3D580%3Bcp%3Dtieba%2C10%2C696%3Bap%3Dloli%BF%D8%B0%C9%2C90%2C704/sign=b5446d71b58f8c54e3d3c5270a124e85/a78e3087e950352adc498e975243fbf2b3118b86.jpg\" style=\"height:704px; margin-top:8px; width:560px\" /><img src=\"http://imgsrc.baidu.com/forum/w%3D580%3Bcp%3Dtieba%2C10%2C744%3Bap%3Dloli%BF%D8%B0%C9%2C90%2C752/sign=257f4cb40ff41bd5da53e8fc61e1e2bb/214c566034a85edfd5d055bc48540923dc54754a.jpg\" style=\"height:749px; margin-top:8px; width:560px\" /><img src=\"http://imgsrc.baidu.com/forum/w%3D580%3Bcp%3Dtieba%2C10%2C337%3Bap%3Dloli%BF%D8%B0%C9%2C90%2C345/sign=fdb337d83812b31bc76ccd21b623550a/1ae9aec27d1ed21b80ca857aac6eddc450da3faf.jpg\" style=\"height:356px; margin-top:8px; width:560px\" /><br />\r\n<br />\r\n<br />\r\n<img src=\"http://imgsrc.baidu.com/forum/w%3D580%3Bcp%3Dtieba%2C10%2C497%3Bap%3Dloli%BF%D8%B0%C9%2C90%2C505/sign=e2b337d83812b31bc76ccd21b623550a/4f6604f41bd5ad6e4cfacf7580cb39dbb7fd3caf.jpg\" style=\"height:512px; margin-top:8px; width:560px\" /><img src=\"http://imgsrc.baidu.com/forum/w%3D580%3Bcp%3Dtieba%2C10%2C312%3Bap%3Dloli%BF%D8%B0%C9%2C90%2C320/sign=8a5e193ba5c27d1ea5263bcc2beece1e/d4290323dd54564ecc394fa6b2de9c82d0584f4a.jpg\" style=\"height:344px; margin-top:8px; width:550px\" /><img src=\"http://imgsrc.baidu.com/forum/w%3D580%3Bcp%3Dtieba%2C10%2C382%3Bap%3Dloli%BF%D8%B0%C9%2C90%2C390/sign=1c3f3f2486d6277fe912323018037c40/4d6b0324ab18972b4f39ab55e7cd7b899f510aaf.jpg\" style=\"height:401px; margin-top:8px; width:560px\" /><img src=\"http://imgsrc.baidu.com/forum/w%3D580%3Bcp%3Dtieba%2C10%2C355%3Bap%3Dloli%BF%D8%B0%C9%2C90%2C363/sign=f741c8e19358d109c4e3a9bae163afcf/3c39a7345982b2b7fab7925b30adcbef77099b86.jpg\" style=\"height:375px; margin-top:8px; width:560px\" /><br />\r\n<br />\r\n在这个时代，高学历的你们还敢嘲笑搬砖的民工，和卖烧饼的大爷大妈吗？<br />\r\n<br />\r\n其实，中国的程序员有一个统一的外号&mdash;&mdash;&ldquo;码农&rdquo;，这一外号形象的表现了程序员工作的境况。如果你周围有一名程序员朋友你就会知道，他们的工作异常辛苦：加班，加班，还是加班！视频里的主人公&ldquo;烧饼哥&rdquo;也有些痛心的告诉我：&ldquo;程序员就是不停的工作，工作很累很累。不过做网游程序开发的时候还是很开心的，兄弟们一起加班解决问题，下班也常去唱唱K打打球，很快乐。可惜后来身体有点吃不消，就离职了。&rdquo;<br />\r\n<br />\r\n这位程序员在身体状况好了些后，也认识了现在的女朋友，&ldquo;之后我找了个漂亮的女朋友。就是你们说的&lsquo;烧饼西施&rsquo;她会做烧饼，然后教给了我，我们又用了一段时间研究和尝试如何把烧饼做的更好吃，成功之后试着就摆了这个烧饼摊。<br />\r\n<br />\r\n<br />\r\n&ldquo;最初的时候一天就卖了一百多张，没想到后来生意越来越好，到现在有时候都忙不过来，甚至还火到网上去了。现在我们俩一起赚了套房子，准备年底就结婚，这在以前我是想都不敢想的！&rdquo;<br />\r\n<br />\r\n&ldquo;烧饼哥&rdquo;的发家致富其实并非偶然，也并不是所有的程序员都要改行去卖烧饼才能获得成功。这使记者想起一句话：没有可以成功的行业，只有在哪个行业都可以成功的人。在此，希望&ldquo;烧饼哥&rdquo;和&ldquo;烧饼西施&rdquo;早结良缘，生活幸福美满；也希望那些还在加班奋斗的码农们，能多给自己一点喘息的空间。<br />\r\n<br />\r\n注意：程序员虽然被叫做苦逼的程序猿，但是，实际上，做IT开发的收入高的人，收入还是比买收入的高多了，这个故事是要告诉大家，做哪行都要努力，但是，也不要轻易放弃自己的本行，个例可以用来鼓舞精神</p>\r\n\r\n<p>&nbsp;</p>\r\n',1,'2014-01-13 00:24:24'),(36,'今天很开心','<p>解决了客户的一些系统问题。</p>\r\n',1,'2014-01-13 08:05:36'),(37,'坚持一种信仰','<p>生活是一种态度</p>\r\n',3,'2014-01-13 08:18:57'),(38,'222','<p><strong>呵呵</strong></p>\r\n',4,'2014-02-10 08:27:13'),(40,'AAA2','<p>BBB2</p>\r\n',3,'2014-02-12 10:23:55');

/*Table structure for table `t_diarytype` */

DROP TABLE IF EXISTS `t_diarytype`;

CREATE TABLE `t_diarytype` (
  `diaryTypeId` int(11) NOT NULL AUTO_INCREMENT,
  `typeName` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`diaryTypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `t_diarytype` */

insert  into `t_diarytype`(`diaryTypeId`,`typeName`) values (1,'工作类'),(2,'生活类'),(3,'学习类'),(4,'人生感叹'),(5,'测试'),(6,'AABB'),(7,'是');

/*Table structure for table `t_user` */

DROP TABLE IF EXISTS `t_user`;

CREATE TABLE `t_user` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(20) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `nickName` varchar(20) DEFAULT NULL,
  `imageName` varchar(40) DEFAULT NULL,
  `mood` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `t_user` */

insert  into `t_user`(`userId`,`userName`,`password`,`nickName`,`imageName`,`mood`) values (1,'java1234','T/n8bk5dX1kMTyE0qMyW0Q==','苦逼屌丝22332233','20140224085322.jpg','生活是一种态度。222333333332		\r\n									\r\n									\r\n									\r\n							');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
