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

 Date: 08/09/2018 16:59:01
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for test1
-- ----------------------------
DROP TABLE IF EXISTS `test1`;
CREATE TABLE `test1`  (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `text` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of test1
-- ----------------------------
INSERT INTO `test1` VALUES (1, 'AA', 'There was no possibility of taking a walk that day. ');
INSERT INTO `test1` VALUES (2, 'AB', 'We had been wandering, indeed, in the leafless shrubbery an hour in the morning; ');
INSERT INTO `test1` VALUES (3, 'AC', 'I was glad of it: I never liked long walks, especially on chilly afternoons: ');
INSERT INTO `test1` VALUES (4, 'AD', 'The said Eliza, John, and Georgiana were now clustered round their mama in the drawing-room');
INSERT INTO `test1` VALUES (5, 'AE', '“What does Bessie say I have done?” I asked.');
INSERT INTO `test1` VALUES (6, 'AF', '“Jane, I don’t like cavillers or questioners; besides,');
INSERT INTO `test1` VALUES (7, 'AG', 'A breakfast-room adjoined the drawing-room, I slipped in there.');
INSERT INTO `test1` VALUES (8, 'AH', 'It contained a bookcase: I soon possessed myself of a volume, ');
INSERT INTO `test1` VALUES (9, 'AI', 'Folds of scarlet drapery shut in my view to the right hand;');
INSERT INTO `test1` VALUES (10, 'AJ', 'At intervals, while turning over the leaves of my book,');
INSERT INTO `test1` VALUES (11, 'AK', 'I returned to my book—Bewick’s History of British Birds: the letterpress thereof I cared little for, ');
INSERT INTO `test1` VALUES (12, 'AL', ' generally speaking; and yet there were certain introductory pages that, child as I was, I could not pass quite as a blank. ');
INSERT INTO `test1` VALUES (13, 'AM', '“Where the Northern Ocean, in vast whirls,');
INSERT INTO `test1` VALUES (14, 'AN', 'Boils round the naked, melancholy isles');
INSERT INTO `test1` VALUES (15, 'AO', 'Of farthest Thule; and the Atlantic surge');
INSERT INTO `test1` VALUES (16, 'AP', 'Pours in among the stormy Hebrides.”');
INSERT INTO `test1` VALUES (17, 'AQ', 'Nor could I pass unnoticed the suggestion of the bleak shores of Lapland, Siberia, Spitzbergen, Nova Zembla, Iceland, Greenland, with ');
INSERT INTO `test1` VALUES (18, 'AR', '“the vast sweep of the Arctic Zone, and those forlorn regions of dreary space');
INSERT INTO `test1` VALUES (19, 'AS', 'I cannot tell what sentiment haunted the quite solitary churchyard, with its inscribed headstone;');
INSERT INTO `test1` VALUES (20, 'AT', 'I cannot tell what sentiment haunted the quite solitary churchyard, with its inscribed headstone;');
INSERT INTO `test1` VALUES (21, 'AU', 'The two ships becalmed on a torpid sea, I believed to be marine phantoms.');
INSERT INTO `test1` VALUES (22, 'AW', 'The fiend pinning down the thief’s pack behind him, I passed over quickly: it was an object of terror.');
INSERT INTO `test1` VALUES (23, 'AX', 'So was the black horned thing seated aloof on a rock, surveying a distant crowd surrounding a gallows.');
INSERT INTO `test1` VALUES (24, 'AY', 'Each picture told a story; mysterious often to my undeveloped understanding and imperfect feelings,');
INSERT INTO `test1` VALUES (25, 'AZ', 'yet ever profoundly interesting: as interesting as the tales Bessie sometimes narrated on winter evenings, ');
INSERT INTO `test1` VALUES (26, 'BA', 'With Bewick on my knee, I was then happy: happy at least in my way. I feared nothing but interruption, and that came too soon. ');
INSERT INTO `test1` VALUES (27, 'BB', '“Boh! Madam Mope!” cried the voice of John Reed; then he paused: he found the room apparently empty.');
INSERT INTO `test1` VALUES (28, 'BC', '“Where the dickens is she!” he continued. “Lizzy! Georgy! (calling to his sisters) Joan is not here: tell mama she is run out into the rain—bad animal!”');
INSERT INTO `test1` VALUES (29, 'BD', '“It is well I drew the curtain,” thought I; ');
INSERT INTO `test1` VALUES (30, 'BE', ' and I wished fervently he might not discover my hiding-place: nor would John Reed have found it out himself;');
INSERT INTO `test1` VALUES (31, 'BF', 'he was not quick either of vision or conception; but Eliza just put her head in at the door, and said at once—');
INSERT INTO `test1` VALUES (32, 'BG', '“She is in the window-seat, to be sure, Jack.”');
INSERT INTO `test1` VALUES (33, 'BH', 'And I came out immediately, for I trembled at the idea of being dragged forth by the said Jack.');
INSERT INTO `test1` VALUES (34, 'BJ', '“What do you want?” I asked, with awkward diffidence.');
INSERT INTO `test1` VALUES (35, 'BK', '“Say, ‘What do you want, Master Reed?’” was the answer. ');
INSERT INTO `test1` VALUES (36, 'BI', 'I want you to come here;” and seating himself in an arm-chair, he intimated by a gesture that I was to approach and stand before him.');
INSERT INTO `test1` VALUES (37, 'BL', 'John Reed was a schoolboy of fourteen years old; ');
INSERT INTO `test1` VALUES (38, 'BM', 'four years older than I, for I was but ten: large and stout for his age, with a dingy and unwholesome skin;');
INSERT INTO `test1` VALUES (39, 'BN', ' thick lineaments in a spacious visage, heavy limbs and large extremities.');
INSERT INTO `test1` VALUES (40, 'BO', 'He gorged himself habitually at table, which made him bilious, and gave him a dim and bleared eye  and flabby cheeks. ');
INSERT INTO `test1` VALUES (41, 'BP', 'He ought now to have been at school; but his mama had taken him home for a month or two, “on account of his delicate health.”');
INSERT INTO `test1` VALUES (42, 'BQ', ' Mr. Miles, the master, affirmed that he would do very well if he had fewer cakes and sweetmeats sent him from home;');
INSERT INTO `test1` VALUES (43, 'BR', ' but the mother’s heart turned from an opinion so harsh, and inclined rather to ');
INSERT INTO `test1` VALUES (44, 'BS', 'John had not much affection for his mother and sisters, and an antipathy to me. He bullied and punished me; ');
INSERT INTO `test1` VALUES (45, 'BT', ' He bullied and punished me; not two or three times in the week, nor once or twice in the day, but continually: every nerve I had feared him,');
INSERT INTO `test1` VALUES (46, 'BU', ' and every morsel of flesh in my bones shrank when he came near. ');
INSERT INTO `test1` VALUES (47, 'BV', 'There were moments when I was bewildered by the terror he inspired, because I had no appeal whatever against either his menaces or his inflictions; ');
INSERT INTO `test1` VALUES (48, 'BW', 'the servants did not like to offend their young master by taking my part against him, and Mrs. ');
INSERT INTO `test1` VALUES (49, 'BX', 'Reed was blind and deaf on the subject: she never saw him strike or heard him abuse me, ');
INSERT INTO `test1` VALUES (50, 'BY', 'Habitually obedient to John, I came up to his chair: ');
INSERT INTO `test1` VALUES (51, 'BZ', '“That is for your impudence in answering mama awhile since,” said he, ');
INSERT INTO `test1` VALUES (52, 'CQ', 'he spent some three minutes in thrusting out his tongue at me as far as he could without damaging the roots');
INSERT INTO `test1` VALUES (53, 'CW', ': I knew he would soon strike, and while dreading the blow,');
INSERT INTO `test1` VALUES (54, 'CE', ' I mused on the disgusting and ugly appearance of him who would presently deal it.');
INSERT INTO `test1` VALUES (55, 'CR', ' I wonder if he read that notion in my face; for, all at once, without speaking, he struck suddenly and strongly.');
INSERT INTO `test1` VALUES (56, 'CT', ' I tottered, and on regaining my equilibrium retired back a step or two from his chair.');
INSERT INTO `test1` VALUES (57, 'CY', 'the more refined idea that John’s sallowness was owing to over-application and, perhaps, to pining after home.');
INSERT INTO `test1` VALUES (58, 'CU', 'but since dinner (Mrs. Reed, when there was no company, dined early) the cold winter wind had brought with it clouds so sombre');
INSERT INTO `test1` VALUES (59, 'CI', ', and a rain so penetrating, that further out-door exercise was now out of the question.');
INSERT INTO `test1` VALUES (60, 'CO', 'dreadful to me was the coming home in the raw twilight, with nipped fingers and toes, ');
INSERT INTO `test1` VALUES (61, 'CP', 'and a heart saddened by the chidings of Bessie, the nurse, and humbled by the consciousness of my physical inferiority to Eliza, John, and Georgiana Reed.');
INSERT INTO `test1` VALUES (62, 'CA', ': she lay reclined on a sofa by the fireside, and with her darlings about her');
INSERT INTO `test1` VALUES (63, 'CS', ' (for the time neither quarrelling nor crying) looked perfectly happy.');
INSERT INTO `test1` VALUES (64, 'CD', ' Me, she had dispensed from joining the group; saying, ');
INSERT INTO `test1` VALUES (65, 'CF', '“She regretted to be under the necessity of keeping me at a distance; ');
INSERT INTO `test1` VALUES (66, 'CG', 'but that until she heard from Bessie, and could discover by her own observation, ');
INSERT INTO `test1` VALUES (67, 'CH', 'that I was endeavouring in good earnest to acquire a more sociable and childlike disposition, ');
INSERT INTO `test1` VALUES (68, 'CJ', 'a more attractive and sprightly manner— something lighter, franker, more natural, ');
INSERT INTO `test1` VALUES (69, 'CK', 'as it were—she really must exclude me from privileges intended only for contented, happy, little children.”');
INSERT INTO `test1` VALUES (70, 'CL', ' there is something truly forbidding in a child taking up her elders in that manner. ');
INSERT INTO `test1` VALUES (71, 'CZ', 'Be seated somewhere; and until you can speak pleasantly, remain silent.”');
INSERT INTO `test1` VALUES (72, 'CX', 'taking care that it should be one stored with pictures. I mounted into the window-seat: ');
INSERT INTO `test1` VALUES (73, 'CC', 'gathering up my feet, I sat cross-legged, like a Turk; and, having drawn the red moreen curtain nearly close, I was shrined in double retirement.');
INSERT INTO `test1` VALUES (74, 'CV', ' to the left were the clear panes of glass, protecting, but not separating me from the drear November day. ');
INSERT INTO `test1` VALUES (75, 'CB', ' I studied the aspect of that winter afternoon.');
INSERT INTO `test1` VALUES (76, 'CN', ' Afar, it offered a pale blank of mist and cloud');
INSERT INTO `test1` VALUES (77, 'CM', '; near a scene of wet lawn and storm-beat shrub, with ceaseless rain sweeping away wildly before a long and lamentable blast.');
INSERT INTO `test1` VALUES (78, 'DQ', 'They were those which treat of the haunts of sea-fowl; ');
INSERT INTO `test1` VALUES (79, 'DW', 'of “the solitary rocks and promontories” by them only inhabited; ');
INSERT INTO `test1` VALUES (80, 'DE', 'of the coast of Norway, studded with isles from its southern extremity, the Lindeness, or Naze, to the North Cape—');
INSERT INTO `test1` VALUES (81, 'DR', 'that reservoir of frost and snow, where firm fields of ice, the accumulation of centuries of winters, ');
INSERT INTO `test1` VALUES (82, 'DT', 'glazed in Alpine heights above heights, surround the pole, ');
INSERT INTO `test1` VALUES (83, 'DY', 'and concentre the multiplied rigours of extreme cold.');
INSERT INTO `test1` VALUES (84, 'DU', '” Of these death-white realms I formed an idea of my own: ');
INSERT INTO `test1` VALUES (85, 'DI', 'shadowy, like all the half-comprehended notions that float dim through children’s brains, but strangely impressive.');
INSERT INTO `test1` VALUES (86, 'DO', ' The words in these introductory pages connected themselves with the succeeding vignettes, ');
INSERT INTO `test1` VALUES (87, 'DP', 'and gave significance to the rock standing up alone in a sea of billow and spray;');
INSERT INTO `test1` VALUES (88, 'DA', ' to the broken boat stranded on a desolate coast; to the cold and ghastly moon glancing through bars of cloud at a wreck just sinking.');
INSERT INTO `test1` VALUES (89, 'DS', 'when she chanced to be in good humour; and when,');
INSERT INTO `test1` VALUES (90, 'DD', ' having brought her ironing-table to the nursery hearth, ');
INSERT INTO `test1` VALUES (91, 'DF', 'she allowed us to sit about it, and while she got up Mrs. Reed’s lace frills, and crimped her nightcap borders,');
INSERT INTO `test1` VALUES (92, 'DG', ' fed our eager attention with passages of love and adventure taken from old fairy tales and other ballads; ');
INSERT INTO `test1` VALUES (93, 'DH', 'or (as at a later period I discovered) from the pages of Pamela, and Henry, Earl of Moreland.');
INSERT INTO `test1` VALUES (94, 'DJ', 'though he did both now and then in her very presence, more frequently, however, behind her back.');
INSERT INTO `test1` VALUES (95, 'DK', '“and for your sneaking way of getting behind curtains, and for the look you had in your eyes two minutes since, you rat!”');
INSERT INTO `test1` VALUES (96, 'DL', 'The breakfast-room door opened.');
INSERT INTO `test1` VALUES (97, 'DZ', '“What were you doing behind the curtain?” he asked.');
INSERT INTO `test1` VALUES (98, 'DX', '“I was reading.”');
INSERT INTO `test1` VALUES (99, 'DC', '“Show the book.”');
INSERT INTO `test1` VALUES (100, 'DV', 'I returned to the window and fetched it thence.');

SET FOREIGN_KEY_CHECKS = 1;
