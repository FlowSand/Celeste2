pico-8 cartridge // http://www.pico-8.com
version 29
__lua__

#include main.lua
#include gamestate.lua
#include input.lua
#include object.lua
#include objects.lua
#include player.lua
#include px9_decomp.lua

standalone = true
level_index = 3

__gfx__
00000000626666660011110001111110011111000011110000000000000000000000000000000022000000006666666600000000422222220000000000000000
00000000626666660111111011144411111111100111111000000000000000000000000000000220000000000311113000000000422222220000000000000000
00700700626666661114441111474471144441101174471100000000000000000000000000002200000000000031130000000000422222220000000000000000
0007700022222222114744710144444017447410714444170000000000000000000000000002200000000077000bb00000000000422222220000000000000000
00077000666662660144444000aaaa000444441007aaaa700eeeeeeeeee00000000000000099400000000777000bb00066666666200000000000000000000000
007007006666626600aaaa000022220000aaaa7000222200e111ee11e111000000770000094447700007777700b11b0000033000400000000000000000000000
000000006666626600222200070000700022220000222200e1ccee7ce7cc00000777770004447770007777770b1111b0000bb000400000000000000000000000
000000002222222200700700000000000000700007700770e1cceeccee77c0007777777044777777777777776666666666666666400000000000000000000000
57777777777777777777777599999999000600000b300b00e1cceeeceeccc0000440000000000000000000000000000000000000000000000000000000022000
77777777777777777777777791111119006660000033b000eeeeeeeeeeee22220444400000000000000000000000000000000000000000000000000000022000
77777777777777777777777791411419000500000288882088888888888897970442240000000000000000000000000000000000000000000000000000024000
77777771177777711777777791441119000500000898888088888888888897970442244000000000000000000000000000000000000000000000000000044000
777777122177771221777777911441190044400008888980eeeeeeeeeeee11110442244400000000077000000000000000000000000000000000000000044000
71777122221111222217771791414419009990000888888020002220002222220444444420000000777700000000000000000000000000000000000000044000
72111222222222222221112791111119004440000289882001610201615551000477744422000000777777000000000000000000000000000000000000044000
72222222222222222222222799999999009990000028820001110001110111007777774422200777777777700000000000000000000000000000000000042000
72222222222222222222222757777775000000000000066622222222222222225555555555555555555555555777777777777777777777750008800056666650
77222222222222222222227777777777000000000007777722222221122222225555555555555550055555557771111177711111777111170081180066666661
77222222222222222222227777777777000000000000066622222211112222225555555555555500005555557777111117771111177711170811118066666661
77722222222222222222277777177177007000700000000022222111111222225555555555555000000555557117711111177111111771178117711866666661
777222222222222222222777772112770070007000000666222211111111222255555555555500000000555571ddd7ddddddd7ddddddd7178117711856666651
772222222222222222222277772222770676067600077777222111111111122255555555555000000000055571dddddddddddddddddddd170811118055555551
77222222222222222222227777722777067606760000066622111111111111225555555555000000000000557111111111111111111111170081180015555551
72222222222222222222222757777775067606760000000021111111111111125555555550000000000000055777777777777777777777750008800001111110
722222222222222222222227577777777777777777777775211111111111111211111111500000000000000557777775777ddd17777ddd170077770056666650
7222222222222222222222277777777777777777777777772211111111111122111111115500000000000055777711177777dd177777dd170777677066666661
72222722222222222222222777777777777777777777777722211111111112221111111155500000000005557117711771177d1771177d177777777766666661
722222222222222222222227777777711777777117777777222211111111222211111111555500000000555571111717711dd717711dd7177777767766666661
7722222222222222222722777777771221777712217777772222211111122222111111115555500000055555711ddd17711ddd17711ddd177767777756666651
7772222222777722222227777177712222111122221777172222221111222222111111115555550000555555711ddd17711ddd17711ddd177777777755555551
7777722227777772222777777211122222222222222111272222222112222222111111115555555005555555711ddd17711ddd17711111170777677015555551
5777777777777777777777755777777777777777777777752222222222222222111111115555555555555555711ddd17711ddd17577777750077770001111110
__gff__
0003000000000101010101000000000083838300000001010101010000000001838383830800838381818107070700038383838383838383818181070707000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__map__
0000000000000000000000000000000000000000000000000000000000000000000000000000000021212121212121212121212136383838383838383838212121212121212121212121383838383821212100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000021212121212121212121212121363838383838383838382101010101313131312121383838383821212100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000000000000000000000000000000000000000000000000000000000000000000000000002121212121212121212121212121363838383838383838210129002a282828282021383838383821212100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000021212121212121212121212121212121363838383838382101001500282828282021363838383827212100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000000000000000000000000000000000000000000000000000000000000000000000000002121212121212121212121212121212121363838383837210139003a282828282021213638383837212100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000021212121212121212121212121212121212136383838212101010101122828282021212121212121212100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
3837212121212121212121212121212121313131313131313131313131313131313121363838382121213131313131313131313131313131313121383838272121212121222828282021313131313131313131313131313131313131313131312121213838383838272121212121212121212121212121212121363838383838
38212121213131313131313131313131322828282828282828282829000000000025202138383821212228282828282828282900002a282828282021213638382721212122282829303200002a282828290000002a28282828282828292a28282021213838383838382121212121313131313131313131313131213838383838
38213131320028002a2828282828282829002a282828002a2828290000000000002520213838372131322828282828282900000000000000282830313131313131313121222900000000000000282828000000000000002a2828290000002828202121363838383838272121213228280000002a282828282828203638383838
38222828290028000028282a28282a2900003a28282800002800000000000000002520213838212225000028290028280024240000000000002a282828282828282829303200000000000000002828290000000000000000282800000000282820212121213838383838212122282828390000000000002a2828303121383838
3722282800002a390028280028280000000028282900000028000000000000000025202138382122250000000000282800101200000015000000282828282828282900000000000000000000002a280000000000000000002a28000d08002a282021212126383838383821212228282828282900000000000000002520363838
2122282900003a28002828002828000000002828002e0000280000000008000000252021363721322500000000002828002022240000000000002a282828002a280000000000000000000000000028000000002523000000101134343500002a2021212638383838383721212200000000000000000015000000002520213838
3132280000002a29002828002828000000002a2800003a282839000d0a2325000025202121212239000000000000282900302112000000000000002a2828000028000000000000000000000000002900000000252300000030320000000000002021213838383838382121213200000000000000000000000000002530213838
2828290000000000002829002828000000000028393a28282828101111122500002530313121222839000024000000000000202200000000000000002a2800002a000000002e00000000000000000000000000001f000000232500000000000020212138383838383721212228283900000000000000243a2828282828202121
28280000000000003a280000232839000000002a28282828282820313132250000002a282801012828282823000000000000303225000000000000000000000000000000000000000000000000000000000000001f00000023250000000000002021383838383837212121322828282828282900000023282828282828303131
28280000000000082828000010122300000000002a2828101111222828000000000000002a010128282828230800000000000000000000000000000000000000000000000000000000000a230000000000000025230000001f000000000000002021363838212121212122290000000000000000000000000000002a28282828
282900000000252328280000303229000000000000282830212122282900000000000000150101282828293334350000000000000000000000000000000000000000000000000000333434350000000000000025230000001f000000000000003031313131313131313132000000000000000000000000000000000000282828
2900000000002510111200000000000015000000002a292520262228000000000000000000010128290000130000000000231313130000000000000000000000000000000000003a2828282800000000000000001f0000002325000000000000000000132a282828280013000000000000000000000000000000000033341111
0002080000002530313200000000000000000000000000252038222824242424242424242401012800000013000000000023250000000000000000000000000000000000000000232828282800000000000000001f00000023250000000000000000001300282828290013000000000000000000000000000000000000282021
11111200000000000000000000000000000000000000002520382228010101010101010101010128000000000000000000000000000000000000080d00000b000000000000003a282828290000000000000008001f0000001f0000000000000000000000002a2828000000000000000000000000000000000000000000282026
272132000000000000000000000000000000000000000025203822282839000000000008132828290d000000000000000000000000000000001001010101120000000000000023282900000000000033343435001f0000001f0000000000000000001313130028280013131300000b000000000000000b000000000000282038
38220000000000000000000000000000000000000000002520382111111200000000001011111111120000000000000000000000000000000020212121212200000000000000282800000000000000001f1f00001f0000001f0000000000000000000000000028280000000000002300000000000000230000000000002a2038
__sfx__
01030306245342452024510245102451024510245002450030500305002b5002b5002950029500245002450030500305002b5002b5002950029500245002450030500305002b5002b50029500295002450024500
0104020317770187711877018770154001540015400164001740018400194001a4001b4001d4001e4001f4001f4001f4001c40018400164000000000000000000000000000000000000000000000000000000000
010b05080017000160001500014000132001220012200122000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
010605081817300154001400013000122001220012200122000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
010300002f6702f6302f6202f6202f6102f6102f6102f6102f6152f61500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
010400021837020370000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
01040002183701f370000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
010200000c6200c050110411303130624306150c04000031244502b4513a4503a4502b0241f021320213202329030290402a0512a0502c0512c0500c63400000186531e0501f0411f0401e0311d0211c01100000
010700000c05318653246440061200612000000000000000301532b1402e13035130241342b1242e1143511500673186230c621006150065324620186212461524340246433233131321303112b3110000000000
010b000030830308252b8202b8152982029815248202481530820308152b8202b8152982029815248202481530820308152b8102b8152981029815248102481530820308152b8102b81529810298152481024815
010b0000080400802513045130251a0451a0251f0451f025080400802513045130251a0451a0251f0451f025080400802513045130251a0451a0251f0451f025080400802513045130251a0451a0251f0451f025
010b00000c0400c02513045130251a0451a0251f0451f0250c0400c02513045130251a0451a0251f0451f0250c0400c02513045130251a0451a0251f0451f0250c0400c02513045130251a0451a0251f0451f025
010b00000a0400a02513045130251a0451a0251f0451f0250a0400a02513045130251a0451a0251f0451f0250a0400a02513045130251a0451a0251f0451f0250a0400a02513045130251a0451a0251f0451f025
010b0000060400602513045130251a0451a0251f0451f025060400602513045130251a0451a0251f0451f025070400702513045130251a0451a0251f0451f025070400702513045130251a0451a0251f0451f025
01040000306532405330653306103061018615376003760000654000003065424800248002480000000000003c6140c6312465113065260741a0510e0410205425031190210d03424021180110c014180110c011
010b0000247402473500000000002b7402b73500000000002b7402b73500000000002b7402b73500000240002b9402b7302b7222b7122c740007002e7402e7302e7202e71530750000002e7402e7352c7402c735
010b00002b9402b7302b7302b7222b7122b7122c7402b740297402973029730297202971029712297120000027740277302773027720277122771229740277402674026730267202671226712267120000000000
010c000013033070001f023210213c0112480024800000003e0143d0213c0213a0213b0213a0213901138011370113601135011340113301132011300111f02100614006110c62118631246310c6210061100615
010b0000247402473024722247152b7402b73500000000002b7402b73500000000002b7402b73500000000002b7402b7302b7222b7152c740000002e9402e7302e7422e73530740307352e7402e7352c7402c735
010b0000090400902513040130251a0401a0251f0401f0250804008025120401202519040190251e0401e0250704007025110401102518040180251d0401d0250604006025140401402518040180251d0401d025
010b00002b9402b7302b7302b7222b7122b7122c7402b7302974029730297302972229712297122b7402973027740277302772027722277122771229740277302674026730267302672226712267122671026710
010b000014b5014a2014a2014a5014a2014a2014a5014a2014a5014a2014a2014a5014a2014a2014b5020a2014b5014a2014a2014a5014a2014a2014a5014a2014a5014a2014a2014a5014a2014a2016a5016a20
010b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000018c0018c000000024a3018a21
010b000018b5018a2018a2018a5018a2018a2018a5018a2018a5018a2018a2018a5018a2018a2018b5024a2018b5018a2018a2018a5018a2018a2018a5018a2018a5018a2018a2018a5018a2018a201aa5018a20
010b000016b5016a2016a2016a5016a2016a2016a5016a2016a5016a2016a2016a5016a2016a2016b5022a2016b5016a2016a2016a5016a2016a2016a5016a2016a5016a2016a2016a5016a2016a2018a5016a20
010b000012b5012a2012a2012a5012a2012a2012a5012a2012b5012a2012a2012a5012a2012a201ea501ea2007b50000000000000000000000000007b50000000000000000000000000018c4018c1024a3018a21
010b000014b5014a2014a2014a5014a2014a2014a5014a2014c4014c1014a2014a5014a2014a2014b5020a2014b5014a2014a2014a5014a2014a2014a5014a2014c4014c1014a2014a5014a2014a2016a5016a20
010b000018b5018a2018a2018a5018a2018a2018a5018a2018c4018c1018a2018a5018a2018a2018b5024a2018b5018a2018a2018a5018a2018a2018a5018a2018c4018c1018a2018a5018a2018a201ac3018a20
010b000016b5016a2016a2016a5016a2016a2016a5016a2016c4016c1016a2016a5016a2016a2016b5022a2016b5016a2016a2016a5016a2016a2016a5016a2016c4016c1016a2016a5016a2016a2018a5016a20
010b00000000030810308152b8102b8152981029815248102481530810308152b8102b8152981029815248102481530810308152b8102b8152981029815248102481530810308152b8102b815298102981524810
010b000022130221202211222112291302912500000000002912029115000000000029110291150000000000291302912527135001002912500100291302b1302b1202b112291302912527135001002612500000
010b0000241302412024112241122b1302b12500100001002b1202b11500100001002b1102b11500100001002b1302b12529135001002b125001002b1302c1302c1202c1122b1302b12529135001002712500000
010b0000050400502513045130251a0451a0251f0451f025050400502513045130251a0451a0251f0451f025050400502513045130251a0451a0251f0451f025050400502513045130251a0451a0251f0451f025
010b000011b5011a2011a2011a5011a2011a2011a5011a2011c4011c1011a2011a5011a2011a2011b501da2011b5011a2011a2011a5011a2011a2011a5011a2011c4011c1011a2011a5011a2011a2011a5013a20
010b000026130261202611226112291302912500000000002912029115000000000029110291150000000000291302912527135001002912500100291302b1302b1202b112291302912527135001002612500000
010b0000241302412024112241122b1302b12500100001002b1202b11500100001002b1102b11500100001002b1102b11529100001002b1102b1152b1002c1002b1102b1152b1002b1002b1102c1112e7212f731
010b00000b0400b02513045130251a0451a0251f0451f0250b0400b02513045130251a0451a0251f0451f0252b0242b01500000000002b0242b01500000000002b0342b02500000000002b0442b0352b00000000
010b000017b5017a2017a2017a5017a2017a2017a5017a2017c4017c1017a2017a5017a2017a2017b5023a2013b5013a4013a4213a3207a2107a1207a1207a120000000000000000000018b5018a4016b5016a40
010b0000307503074500000000003075030745000000000030750307450000000000307503074030732307253275032740327323272533755000003295032740327323272530750000002e7502e7453074500000
010b00003275032745000000000032740327350000000000327403273032722327153375033745357303572533950337403373033722337123371532950327303273232742337503274030750307403073230725
010b00002c7502c7402c7322c7322c7222c7222e7502e7402e7322e7222e7122e715307503074030732307422f7502f7402f7322f7322f7222f72230750307403073230722307123071532750327403273232725
010b00002a7502b7412b7402b7302b7322b7222b7222b7122b7122b7122b7122b715297402b7302c7302b7502b7402b7402b7322b7222b7122b7122b7150000000000000000000000000297002b7002c7002b700
010b00002f7502f7402f7402f7322f7322f7423075030740307403073230732307423275032740327323273533750337403373033722337123371235750337403275032740327303272232722327123271232715
010b0000083550000013d200000013d1000000083550000013d200000013d1000000083550000013d20000000a3550000013e200000013e10000000a3550000013e200000013e10000000a3550000013e2000000
010b00000b3550000013e200000013e10000000b3550000013e200000013e10000000b3550000013e20000000c340133251b3150c340133251b3150a340133251b3150a340133251b3150a340133201b3121b315
010b0000083550000013d200000013d1000000083550000013d200000013d1000000083550000013d2000000073550000013e2000e0013e1000000073550000013e200000013e1000000073550000013e2000000
010b0000063550000013e200000013e1000000063550000013e200000013e1000000063550000013e2000000073550000013e2000e0013e1000000073550000013e200000013e1000000073550000013e2000000
010b000014b5014a4014a3014a5014c4014a4014b4014a3014b5014a5014a4014a3014c4014a3020a350000016b5016a500000016b5016c400000016b5016a4016a3016a2216a2216a1216c4016a5016b5022a40
010b000017b5017a4017a3017a5017c4017a4017b4017a3017b5017a5017a4017a3013c4013a301fa350000018b5018a500000018b5018c400000016b5016a4016a3016a2216a2216a1216c4016a5018b5022a40
010b000014b5014a4014a3014a5014c4014a4014b4014a3014b5014a5014a4014a3014c4014a3020a350000013b5013a500000013b5013c400000013b5013a4013a3013a2213a2213a1213c4013a5013b501fa40
010b000012b501ea4012a3012a5012c4012a4012b4012a3012b5012a501ea4012a3012c4012a3012a350000013b501fa50000001fb5013c400000013b501fa401fa301fa221fa221fa1213c401fa5013b502ba40
018200200c60018600186140c6110c6150000000000000000c6140c61500000000000000000000246140c6110c615000000000000000000001861400611006150000000000000000c6140c615000000000000000
01820000000000ca740ca700ca700ca75000000000000000000000ca740ca700ca700ca750000000000000000000000a7400a7000a7000a750000000000000000000000000000000ca740ca7100a7100a7500000
0182002004614006111d611026111061109611056120461200611116110261110611096110561204612006111d611026112861109611056120461200611116110261110611096110561204612006120561202615
__music__
00 091d4344
00 091d1656
01 090a1555
00 090b1757
00 090c1858
00 090d194e
00 1a0a0f51
00 1b0b1057
00 1c0c1258
00 16131444
00 21201e44
00 1b0b1f44
00 1c0c2244
00 25242344
00 2f2b2644
00 302c2744
00 312d2844
00 322e2944
00 2f2b2644
00 302c2744
00 312d2844
02 322e2a44
00 091d4344
00 091d4344
01 090a4344
00 090b4344
00 090c4344
00 090d4e44
00 090a4f44
00 090b5044
00 090c5244
00 09135444
00 09201d44
00 090b1d44
00 090c1d44
02 090d1d44
03 33347544
03 73343544
03 41423544

