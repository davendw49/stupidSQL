/*
 Navicat MySQL Data Transfer

 Source Server         : connect
 Source Server Type    : MySQL
 Source Server Version : 50722
 Source Host           : localhost:3306
 Source Schema         : sys

 Target Server Type    : MySQL
 Target Server Version : 50722
 File Encoding         : 65001

 Date: 08/09/2018 17:13:30
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for test2
-- ----------------------------
DROP TABLE IF EXISTS `test2`;
CREATE TABLE `test2`  (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `text` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of test2
-- ----------------------------
INSERT INTO `test2` VALUES (1, 'AA', '第一章 第一章');
INSERT INTO `test2` VALUES (2, 'AB', ' 那天，出去散步是不可能了。');
INSERT INTO `test2` VALUES (3, 'AC', ' 我倒是求之不得。我向来不喜欢远距离散步，尤其在冷飕飕的下午。');
INSERT INTO `test2` VALUES (4, 'AD', '此时此刻，刚才提到的伊丽莎、约翰和乔治亚娜都在客厅里，簇拥着他们的妈妈。');
INSERT INTO `test2` VALUES (5, 'AE', ' “贝茵说我干了什么啦？”我问。');
INSERT INTO `test2` VALUES (6, 'AF', ' “简，我不喜欢吹毛求疵或者刨根究底的人，更何况小孩子家这么跟大人顶嘴实在让人讨厌。找个地方去坐着，不会和气说话就别张嘴。”');
INSERT INTO `test2` VALUES (7, 'AG', '客厅的隔壁是一间小小的餐室，我溜了进去。里面有一个书架。');
INSERT INTO `test2` VALUES (8, 'AH', '在我右侧，绯红色窗幔的皱褶档住了我的视线；左侧，明亮的玻璃窗庇护着我，');
INSERT INTO `test2` VALUES (9, 'AI', '我重又低头看书，那是本比尤伊克的《英国鸟类史》。');
INSERT INTO `test2` VALUES (10, 'AJ', '还有些地方我也不能看都不看，一翻而过，那就是书中提到的拉普兰、西伯利亚、斯匹次卑尔根群岛、新地岛、冰岛和格陵兰荒凉的海岸。');
INSERT INTO `test2` VALUES (11, 'AK', '其实，早上我们还在光秃秃的灌木林中溜达了一个小时，但从午饭时起（无客造访时，里德太太很早就用午饭）');
INSERT INTO `test2` VALUES (12, 'AL', '试想，阴冷的薄暮时分回得家来，手脚都冻僵了，还要受到保姆贝茵的数落，又自觉体格不如伊丽莎、约翰和乔治亚娜，心里既难过又惭愧，那情形委实可怕。');
INSERT INTO `test2` VALUES (13, 'AM', '她则斜倚在炉边的沙发上，身旁坐着自己的小宝贝们（眼下既未争吵也未哭叫），一副安享天伦之乐的神态。');
INSERT INTO `test2` VALUES (14, 'AN', '而我呢，她恩准我不必同他们坐在一起了，说是她很遗憾，不得不让我独个儿在一旁呆着。');
INSERT INTO `test2` VALUES (15, 'AO', '要是没有亲耳从贝茜那儿听到，并且亲眼看到，我确实在尽力养成一种比较单纯随和的习性，活泼可爱的举止，');
INSERT INTO `test2` VALUES (16, 'AP', '也就是更开朗、更率直、更自然些，那她当真不让我享受那些只配给予快乐知足的孩子们的特权了。');
INSERT INTO `test2` VALUES (17, 'AQ', '不一会儿，我从上面拿下一本书来，特意挑插图多的，爬上窗台，缩起双脚，');
INSERT INTO `test2` VALUES (18, 'AR', '像土耳其人那样盘腿坐下，将红色的波纹窗帘几乎完全拉拢，把自己加倍隐蔽了起来。');
INSERT INTO `test2` VALUES (19, 'AS', '使我既免受十一月阴沉天气的侵害，又不与外面的世界隔绝，在翻书的间隙，我抬头细看冬日下午的景色。');
INSERT INTO `test2` VALUES (20, 'AT', '只见远方白茫茫一片云雾，近处湿漉漉一块草地和受风雨袭击的灌木。一阵持久而凄厉的狂风，驱赶着如注的暴雨，横空归过。');
INSERT INTO `test2` VALUES (21, 'AU', '文字部份我一般不感兴趣，但有几页导言，虽说我是孩子，却不愿当作空页随手翻过。');
INSERT INTO `test2` VALUES (22, 'AW', '内中写到了海鸟生息之地；写到了只有海鸟栖居的“孤零零的岩石和海岬”；');
INSERT INTO `test2` VALUES (23, 'AX', '写到了自南端林纳斯尼斯，或纳斯，至北角都遍布小岛的挪威海岸：');
INSERT INTO `test2` VALUES (24, 'AY', '那里，北冰洋掀起的巨大漩涡，咆哮在极地光秃凄凉约小岛四周。而大西洋的汹涌波涛，泻入了狂暴的赫布里底群岛。');
INSERT INTO `test2` VALUES (25, 'AZ', '“广袤无垠的北极地带和那些阴凄凄的不毛之地，宛若冰雪的储存库。');
INSERT INTO `test2` VALUES (26, 'BA', '便刮起了冬日凛冽的寒风，随后阴云密布，大雨滂沱，室外的活动也就只能作罢了。');
INSERT INTO `test2` VALUES (27, 'BB', '千万个寒冬所积聚成的坚冰，像阿尔卑斯山的层层高峰，光滑晶莹，包围着地极，把与日俱增的严寒汇集于一处。');
INSERT INTO `test2` VALUES (28, 'BC', '我说不清一种什么样的情调弥漫在孤寂的墓地：刻有铭文的墓碑、一扇大门、两棵树、低低的地平线、破败的围墙。一弯初升的新月，表明时候正是黄昏。');
INSERT INTO `test2` VALUES (29, 'BD', '两艘轮船停泊在水波不兴的海面上，我以为它们是海上的鬼怪。');
INSERT INTO `test2` VALUES (30, 'BE', '魔鬼从身后按住窃贼的背包，那模样实在可怕，我赶紧翻了过去。');
INSERT INTO `test2` VALUES (31, 'BF', '一样可怕的是，那个头上长角的黑色怪物，独踞于岩石之上，远眺着一大群人围着绞架。');
INSERT INTO `test2` VALUES (32, 'BG', '每幅画都是一个故事、由于我理解力不足，欣赏水平有限，它们往往显得神秘莫测，');
INSERT INTO `test2` VALUES (33, 'BH', '当时，我膝头摊着比尤伊克的书，心里乐滋滋的，至少是自得其乐，就怕别人来打扰。');
INSERT INTO `test2` VALUES (34, 'BJ', '但打扰来得很快，餐室的门开了。');
INSERT INTO `test2` VALUES (35, 'BK', '\"嘘！苦恼小姐！”约翰·里德叫唤着，随后又打住了，显然发觉房间里空无一人。');
INSERT INTO `test2` VALUES (36, 'BI', '“见鬼，上哪儿去了呀？”他接着说。“丽茜！乔琪！”（喊着他的姐妹）“琼不在这儿呐，告诉妈妈她窜到雨地里去了，这个坏畜牲！”');
INSERT INTO `test2` VALUES (37, 'BL', '“幸亏我拉好了窗帘，”我想。我真希望他发现不了我的藏身之地。');
INSERT INTO `test2` VALUES (38, 'BM', '我立即走了出来，因为一想到要被这个杰克硬拖出去，身子便直打哆嗦。');
INSERT INTO `test2` VALUES (39, 'BN', '什么事呀？”我问，既尴尬又不安。');
INSERT INTO `test2` VALUES (40, 'BO', '“该说，什么事呀，里德‘少爷？’”便是我得到的回答。“我要你到这里来，”他在扶手椅上坐下，打了个手势，示意我走过去站到他面前。');
INSERT INTO `test2` VALUES (41, 'BP', '约翰·里德是个十四岁的小学生，比我大四岁，因为我才十岁。论年龄，他长得又大又胖，但肤色灰暗，一付病态。脸盘阔，五官粗，四肢肥，手膨大。');
INSERT INTO `test2` VALUES (42, 'BQ', '”我对这些死白色的地域，已有一定之见，但一时难以捉摸，仿佛孩子们某些似懂非懂的念头，');
INSERT INTO `test2` VALUES (43, 'BR', '朦朦胧胧浮现在脑际，却出奇地生动，导言中的这几页文字，与后面的插图相配，');
INSERT INTO `test2` VALUES (44, 'BS', '使兀立于大海波涛中的孤岩，搁浅在荒凉海岸上的破船，以及透过云带俯视着沉船的幽幽月光，更加含义隽永了。');
INSERT INTO `test2` VALUES (45, 'BT', '但无不趣味盎然，就像某些冬夜，贝茜碰巧心情不错时讲述的故事一样');
INSERT INTO `test2` VALUES (46, 'BU', '遇到这种时候，贝茵会把烫衣桌搬到保育室的壁炉旁边，让我们围着它坐好。');
INSERT INTO `test2` VALUES (47, 'BV', '她一面熨里德太太的网眼饰边，把睡帽的边沿烫出褶裥来，一面让我们迫不及待地倾听她一段段爱情和冒险故事，');
INSERT INTO `test2` VALUES (48, 'BW', '这些片段取自于古老的神话传说和更古老的歌谣，或者如我后来所发现，来自《帕美拉》和《莫兰伯爵亨利》。');
INSERT INTO `test2` VALUES (49, 'BX', '约翰·里德自己是发现不了的，他眼睛不尖，头脑不灵。可惜伊丽莎从门外一探进头来，就说：“她在窗台上，准没错，杰克。”');
INSERT INTO `test2` VALUES (50, 'BY', ' 作为保证，我让双手紧挨着凳子。');

SET FOREIGN_KEY_CHECKS = 1;
