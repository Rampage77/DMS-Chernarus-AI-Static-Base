/**
 * Created with Exile Mod 3DEN Plugin
 * www.exilemod.com
 *
 * WARNING WARNING WARNING WARNING WARNING WARNING WARNING WARNING WARNING WARNING WARNING WARNING
 * Do NOT replace this with your original InitServer.sqf, Just add this whole file to the bottom!
 */
 
ExileRouletteChairs = [];
ExileRouletteChairPositions = [];

// 272 Vehicles
private _vehicles = [
["TK_GUE_WarfareBBarrier10xTall_EP1", [6367.03, 14079.2, 331.783], [0, 0.9994, -0.0346456], [-0.0093285, 0.0346441, 0.999356], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [6382.62, 14079.2, 331.892], [0, 0.999304, -0.0373063], [-0.00399675, 0.037306, 0.999296], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [6413.77, 14079.3, 331.9], [0, 0.999253, -0.038638], [0.00533751, 0.0386375, 0.999239], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [6398.23, 14079.3, 331.928], [0, 0.999253, -0.038638], [0, 0.038638, 0.999253], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [6427.87, 14079.4, 331.822], [0, 0.999304, -0.0373063], [0.00799344, 0.0373051, 0.999272], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [6443.47, 14079.5, 331.667], [0, 0.999304, -0.0373079], [0.0119996, 0.0373052, 0.999232], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [6474.68, 14079.5, 331.181], [0, 0.999488, -0.0319811], [0.0186626, 0.0319756, 0.999314], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [6459.08, 14079.5, 331.452], [0, 0.999353, -0.0359782], [0.0159975, 0.0359736, 0.999225], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [6490.31, 14079.5, 330.866], [0, 0.99957, -0.0293222], [0.02133, 0.0293155, 0.999343], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [6519.81, 14083.9, 330.11], [-0.567526, 0.823344, -0.00435777], [0.02133, 0.0199931, 0.999573], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [6505.91, 14079.6, 330.519], [0, 0.999645, -0.0266593], [0.023991, 0.0266516, 0.999357], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [6527.01, 14111.1, 329.361], [-0.998447, 0.054092, 0.013353], [0.0146682, 0.0239911, 0.999605], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [6527.87, 14126.7, 328.97], [-0.998497, 0.0540085, 0.009284], [0.0106641, 0.0253213, 0.999622], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [6528.67, 14142.3, 328.554], [-0.998532, 0.0539145, 0.00522288], [0.00666787, 0.0266565, 0.999622], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [6529.53, 14157.9, 328.122], [-0.99854, 0.0538839, 0.00381227], [0.00532655, 0.0279869, 0.999594], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [6530.46, 14173.5, 327.659], [-0.998546, 0.05385, 0.00241303], [0.00399666, 0.0293199, 0.999562], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [6531.32, 14189.1, 327.187], [-0.998553, 0.0537717, -0.000313485], [0.00133688, 0.0306533, 0.999529], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [6532.12, 14204.7, 326.678], [-0.998553, 0.0537707, -0.00045668], [0.00133688, 0.033315, 0.999444], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [6532.98, 14220.2, 326.158], [-0.998554, 0.0537262, -0.00179088], [0, 0.033315, 0.999445], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [6527.67, 14244.2, 325.303], [0.00513042, -0.999291, 0.0373058], [0, 0.0373063, 0.999304], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [6512.07, 14244.1, 325.323], [0.00512875, -0.999188, 0.0399695], [0, 0.03997, 0.999201], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [6480.92, 14243.8, 325.316], [0.0051297, -0.999987, 0], [0, 0, 1], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [6496.46, 14244, 325.315], [0.00512827, -0.999987, 0], [0, 0, 1], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [6466.82, 14243.7, 325.319], [0.00512899, -0.999987, 0], [0, 0, 1], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [6451.23, 14243.5, 325.32], [0.0051278, -0.999987, 0], [0, 0, 1], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [6420.02, 14243.3, 325.31], [0.00512947, -0.999987, 0], [0, 0, 1], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [6435.62, 14243.4, 325.324], [0.00512899, -0.999987, 0], [0, 0, 1], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [6404.39, 14243.2, 325.305], [0.00513113, -0.999987, 0], [0, 0, 1], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [6374.91, 14238.7, 325.447], [0.571913, -0.820314, 0], [0, 0, 1], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [6392.8, 14249.4, 325.125], [-0.839081, -0.543773, 0.0159504], [0, 0.0293202, 0.99957], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [6533.83, 14235.8, 325.614], [-0.998553, 0.0537685, -0.000671427], [0.00133688, 0.0373063, 0.999303], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [6343.53, 14085.7, 331.283], [-0.99985, -0.000907721, -0.0173136], [-0.0173316, 0.0266553, 0.999494], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [6343.5, 14101.3, 330.797], [-0.999928, -0.000512032, -0.0119897], [-0.012, 0.0319844, 0.999416], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [6343.43, 14132.4, 329.652], [-0.999978, -0.000279682, -0.00665339], [-0.00665923, 0.0386372, 0.999231], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [6343.48, 14116.9, 330.244], [-0.999968, -0.000373958, -0.00798505], [-0.00799344, 0.0373051, 0.999272], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [6343.31, 14146.5, 329.098], [-0.999986, -0.0001257, -0.00533681], [-0.00533768, 0.0386375, 0.999239], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [6343.28, 14162.1, 328.482], [-0.999986, -7.80512e-005, -0.00532764], [-0.0053265, 0.0399694, 0.999187], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [6343.22, 14193.3, 327.223], [-0.999996, 0.000335428, -0.002667], [-0.00265204, 0.0386379, 0.99925], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [6343.25, 14177.7, 327.859], [-0.999996, 0.000128231, -0.00265961], [-0.00265204, 0.0412963, 0.999143], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [6343.19, 14209, 326.595], [-0.999999, 0.000410155, -0.00135469], [-0.00133721, 0.03997, 0.9992], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [6362.27, 14229.8, 325.768], [0.571913, -0.819702, 0.0316953], [0, 0.038638, 0.999253], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [6349.44, 14220.9, 326.119], [0.571913, -0.819672, 0.032457], [-0.00133721, 0.0386349, 0.999252], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [6376.9, 14248.8, 325.141], [-0.839081, -0.543794, 0.0152241], [0, 0.0279852, 0.999608], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [6404.17, 14110.2, 330.719], [-0.998553, 0.0537665, -0.000814753], [0.00133688, 0.03997, 0.9992], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [6405.03, 14125.8, 330.094], [-0.998553, 0.0537665, -0.000814753], [0.00133688, 0.03997, 0.9992], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [6405.83, 14141.4, 329.464], [-0.998553, 0.0537653, -0.000886207], [0.00133688, 0.0412978, 0.999146], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [6406.69, 14157, 328.828], [-0.998553, 0.0537653, -0.000886363], [0.00133688, 0.0413007, 0.999146], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [6407.62, 14172.6, 328.186], [-0.998554, 0.0537102, -0.00221993], [0, 0.0412964, 0.999147], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [6408.48, 14188.2, 327.541], [-0.998554, 0.0537102, -0.00221993], [0, 0.0412964, 0.999147], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [6410.14, 14219.4, 326.254], [-0.998554, 0.0537072, -0.00229157], [0, 0.042629, 0.999091], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [6410.99, 14234.9, 325.609], [-0.998554, 0.0537102, -0.00221993], [0, 0.0412964, 0.999147], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [6478.82, 14210.9, 326.576], [-0.818017, 0.57486, -0.0195996], [0.00133688, 0.0359749, 0.999352], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [6474.04, 14197, 327.099], [-0.998551, 0.0538155, 0.000784064], [0.00265199, 0.0346472, 0.999396], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [6473.18, 14181.4, 327.653], [-0.998532, 0.0539729, 0.00456766], [0.00665928, 0.0386372, 0.999231], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [6472.38, 14165.8, 328.225], [-0.998532, 0.0539542, 0.00478344], [0.00665928, 0.0346414, 0.999378], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [6471.52, 14150.2, 328.795], [-0.998522, 0.0540087, 0.0060498], [0.00800059, 0.0359771, 0.999321], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [6470.59, 14134.6, 329.357], [-0.998511, 0.0540561, 0.00736857], [0.00932186, 0.0359717, 0.999309], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [6469.73, 14119.1, 329.915], [-0.998497, 0.0540927, 0.00877996], [0.0106641, 0.0346419, 0.999343], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [6468.93, 14103.5, 330.474], [-0.998465, 0.0541848, 0.0114375], [0.013327, 0.0346391, 0.999311], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [6468.07, 14087.9, 331.018], [-0.998426, 0.0542771, 0.0140985], [0.0159937, 0.0346429, 0.999272], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [6532.35, 14098.8, 329.553], [-0.6466, -0.762371, 0.0264592], [0.0173315, 0.0199947, 0.99965], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [6531.59, 14083.2, 329.875], [-0.646567, -0.762409, 0.0261474], [0.0199975, 0.0173247, 0.99965], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [6351.36, 14079.2, 331.599], [0, 0.99953, -0.0306533], [-0.0146643, 0.03065, 0.999423], true],
["Land_Offices_01_V1_F", [6483.77, 14102.9, 337.15], [-0.999345, 0.036195, 0], [0, 0, 1], true],
["Land_A_Office01_EP1", [6440.15, 14232.3, 329.429], [0, 0.999201, -0.03997], [-0.00133721, 0.03997, 0.9992], true],
["Land_Hlaska", [6408.03, 14239.9, 327.463], [0, 0.999353, -0.0359782], [-0.00133721, 0.0359782, 0.999352], true],
["Land_Hlaska", [6521.77, 14090, 331.975], [0.618782, -0.785563, 0.000544942], [0.0226181, 0.0185095, 0.999573], true],
["CampEast", [6467.86, 14195.4, 327.429], [0.998392, -0.0566877, 5.07229e-005], [0.00199443, 0.0360204, 0.999349], true],
["CampEast", [6467.15, 14183.3, 327.871], [0.998383, -0.0567907, -0.00242534], [0.00463037, 0.038728, 0.999239], true],
["Land_Ss_hangar", [6449.86, 14108.2, 335.388], [-0.0441742, -0.998313, 0.0376836], [0.00933473, 0.0373063, 0.99926], true],
["Land_Scrap_MRAP_01_F", [6541.16, 14096.4, 329.588], [-0.0692143, 0.997471, -0.0161794], [0.0159975, 0.017326, 0.999722], true],
["Land_ScrapHeap_1_F", [6533.89, 14075.7, 329.319], [0, 0.999872, -0.0160014], [0.0239958, 0.0159968, 0.999584], true],
["Land_ScrapHeap_2_F", [6391.85, 14261.1, 324.699], [-0.998979, -0.0390918, -0.0226577], [-0.0226926, 0.000449742, 0.999742], true],
["Land_ScrapHeap_1_F", [6368.95, 14254.8, 324.378], [0, 0.9998, -0.0199977], [0, 0.0199977, 0.9998], true],
["TK_WarfareBUAVterminal_Base_EP1", [6484.09, 14135, 329.817], [0.517267, 0.855147, -0.0340273], [0.0106693, 0.0333131, 0.999388], true],
["Land_Mil_House_dam_EP1", [6416.49, 14173.3, 332.724], [0.998123, -0.0612324, 0.00103211], [0.00133688, 0.0386349, 0.999252], true],
["Land_BagFenceRound", [6444.82, 14167.4, 327.656], [0, 0.999253, -0.038638], [0.00399666, 0.0386377, 0.999245], true],
["Land_BagFenceRound", [6446.39, 14169, 327.59], [-0.999992, 0.000599468, 0.00397647], [0.00399666, 0.0386377, 0.999245], true],
["Land_BagFenceRound", [6443.24, 14168.9, 327.604], [0.999957, 0.008262, -0.00431897], [0.00399666, 0.0386377, 0.999245], true],
["Land_BagFenceRound", [6442.24, 14169.9, 327.57], [0, 0.999253, -0.038638], [0.00265199, 0.0386379, 0.99925], true],
["Land_BagFenceRound", [6442.24, 14173, 327.451], [-0.00138982, -0.999252, 0.0386417], [0.00265199, 0.0386379, 0.99925], true],
["Land_BagFenceRound", [6440.66, 14171.4, 327.516], [0.999961, 0.00831395, -0.00297535], [0.00265199, 0.0386379, 0.99925], true],
["Land_BagFenceRound", [6447.33, 14169.9, 327.551], [0, 0.999253, -0.038638], [0.00399666, 0.0386377, 0.999245], true],
["Land_BagFenceRound", [6448.9, 14171.4, 327.482], [-0.999986, 0.0006579, 0.00530449], [0.00532655, 0.039965, 0.999187], true],
["Land_BagFenceRound", [6447.34, 14173, 327.428], [-0.00138981, -0.9992, 0.0399729], [0.00532655, 0.039965, 0.999187], true],
["Land_BagFenceRound", [6446.31, 14173.9, 327.398], [-0.999986, 0.0006579, 0.00530449], [0.00532655, 0.039965, 0.999187], true],
["Land_BagFenceRound", [6444.74, 14175.4, 327.344], [-0.00138981, -0.9992, 0.0399729], [0.00532655, 0.039965, 0.999187], true],
["Land_BagFenceRound", [6443.16, 14173.8, 327.415], [0.999957, 0.008262, -0.00431897], [0.00399666, 0.0386377, 0.999245], true],
["TK_GUE_WarfareBBarrier5x_EP1", [6408.79, 14103, 330.472], [0, 0.999253, -0.0386349], [0.00133688, 0.0386349, 0.999252], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [6488.68, 14211, 326.557], [0.675441, 0.73687, -0.0283184], [0.00265199, 0.0359748, 0.999349], true],
["Land_Medevac_house_V1_F", [6481.63, 14155.2, 328.155], [-0.999515, 0.0311329, 0], [0, 0, 1], true],
["Land_Medevac_house_V1_F", [6482.5, 14169.8, 327.634], [-0.999515, 0.0311329, 0], [0, 0, 1], true],
["Land_Medevac_house_V1_F", [6482.76, 14185.4, 327.084], [-0.999515, 0.0311329, 0], [0, 0, 1], true],
["Land_Medevac_house_V1_F", [6483.63, 14200, 326.562], [-0.999515, 0.0311329, 0], [0, 0, 1], true],
["Land_Medevac_HQ_V1_F", [6499.99, 14160.2, 331.013], [0.0255026, 0.999675, 0], [0, 0, 1], true],
["RU_WarfareBAircraftFactory", [6506.03, 14134.1, 333.947], [0, 0.99953, -0.0306533], [0.0119996, 0.0306511, 0.999458], true],
["Land_Cargo_HQ_V1_F", [6443.73, 14200.9, 329.786], [0, 1, 0], [0, 0, 1], true],
["Land_Cargo_House_V1_F", [6464.69, 14169.1, 327.749], [0.999771, 0.0214132, 0], [0, 0, 1], true],
["Land_Cargo_House_V1_F", [6463.84, 14157.3, 328.184], [0.999771, 0.0214132, 0], [0, 0, 1], true],
["Land_Cargo_Tower_V1_F", [6524.47, 14236.1, 337.407], [0, 1, 0], [0, 0, 1], true],
["CampEast", [6468.54, 14207.6, 326.966], [0.998392, -0.0566877, 0.000148916], [0.00197155, 0.0373483, 0.9993], true],
["Land_Mil_ControlTower_EP1", [6351.9, 14094.2, 340.205], [0.999956, 0.000213422, 0.0093267], [-0.0093285, 0.0346441, 0.999356], true],
["Land_BagFenceRound", [6497.84, 14221.9, 325.498], [0, 0.999304, -0.0373063], [0.00133688, 0.0373063, 0.999303], true],
["Land_BagFenceRound", [6499.42, 14223.4, 325.439], [-1, 0.00044509, -1.60224e-005], [0, 0.0359749, 0.999353], true],
["Land_BagFenceRound", [6496.27, 14223.4, 325.444], [0.999964, 0.00836697, -0.00165012], [0.00133688, 0.0373063, 0.999303], true],
["Land_BagFenceRound", [6495.26, 14224.4, 325.409], [0, 0.999304, -0.0373063], [0.00133688, 0.0373063, 0.999303], true],
["Land_BagFenceRound", [6495.27, 14227.5, 325.294], [-0.00138983, -0.999352, 0.0359749], [0, 0.0359749, 0.999353], true],
["Land_BagFenceRound", [6493.68, 14225.9, 325.355], [0.999964, 0.00836697, -0.00165012], [0.00133688, 0.0373063, 0.999303], true],
["Land_BagFenceRound", [6500.35, 14224.3, 325.406], [0, 0.999353, -0.0359749], [0, 0.0359749, 0.999353], true],
["Land_BagFenceRound", [6501.93, 14225.9, 325.351], [-1, 0.00044509, -1.60224e-005], [0, 0.0359749, 0.999353], true],
["Land_BagFenceRound", [6500.36, 14227.4, 325.295], [-0.00138983, -0.999352, 0.0359749], [0, 0.0359749, 0.999353], true],
["Land_BagFenceRound", [6499.33, 14228.3, 325.261], [-1, 0.000445068, -1.66154e-005], [0, 0.0373063, 0.999304], true],
["Land_BagFenceRound", [6497.77, 14229.9, 325.204], [-0.00138983, -0.999303, 0.0373063], [0, 0.0373063, 0.999304], true],
["Land_BagFenceRound", [6496.18, 14228.3, 325.263], [0.999965, 0.00841684, -0.00031422], [0, 0.0373063, 0.999304], true],
["Land_BagFenceRound", [6513.49, 14096.9, 329.276], [0, 0.999679, -0.0253251], [0.018666, 0.0253207, 0.999505], true],
["Land_BagFenceRound", [6515.07, 14098.4, 329.207], [-0.999826, 0.000917953, 0.0186487], [0.018666, 0.0253207, 0.999505], true],
["Land_BagFenceRound", [6511.92, 14098.4, 329.267], [0.99979, 0.00794731, -0.0188726], [0.018666, 0.0253207, 0.999505], true],
["Land_BagFenceRound", [6510.91, 14099.4, 329.261], [0, 0.999679, -0.0253251], [0.018666, 0.0253207, 0.999505], true],
["Land_BagFenceRound", [6510.92, 14102.5, 329.179], [-0.00138959, -0.999643, 0.0266852], [0.018666, 0.0266547, 0.99947], true],
["Land_BagFenceRound", [6509.34, 14100.9, 329.249], [0.999837, 0.00799325, -0.0162158], [0.0159975, 0.0266559, 0.999517], true],
["Land_BagFenceRound", [6516.01, 14099.3, 329.169], [0, 0.999679, -0.0253251], [0.018666, 0.0253207, 0.999505], true],
["Land_BagFenceRound", [6517.58, 14100.9, 329.101], [-0.999872, 0.000829089, 0.0159822], [0.0159975, 0.0239906, 0.999584], true],
["Land_BagFenceRound", [6516.02, 14102.4, 329.089], [-0.00138965, -0.999711, 0.0240159], [0.0159975, 0.0239906, 0.999584], true],
["Land_BagFenceRound", [6514.99, 14103.3, 329.084], [-0.999872, 0.000829089, 0.0159822], [0.0159975, 0.0239906, 0.999584], true],
["Land_BagFenceRound", [6513.42, 14104.9, 329.072], [-0.00138965, -0.999711, 0.0240159], [0.0159975, 0.0239906, 0.999584], true],
["Land_BagFenceRound", [6511.83, 14103.3, 329.141], [0.99979, 0.00792211, -0.0188832], [0.018666, 0.0266547, 0.99947], true],
["Land_A_Hospital", [6356.46, 14163.9, 334.866], [-0.999921, 0.0111632, -0.00577697], [-0.0053265, 0.0399694, 0.999187], true],
["Land_BagFenceRound", [6393.47, 14088.7, 330.904], [0, 0.999253, -0.038638], [-0.00133721, 0.038638, 0.999252], true],
["Land_BagFenceRound", [6395.05, 14090.2, 330.847], [-0.999999, 0.000393382, -0.00135342], [-0.00133721, 0.0386349, 0.999252], true],
["Land_BagFenceRound", [6391.9, 14090.2, 330.844], [0.999964, 0.00846808, 0.00101073], [-0.00133721, 0.038638, 0.999252], true],
["Land_BagFenceRound", [6390.89, 14091.2, 330.805], [0, 0.999253, -0.038638], [-0.00133721, 0.038638, 0.999252], true],
["Land_BagFenceRound", [6390.9, 14094.3, 330.685], [-0.00138983, -0.999252, 0.0386361], [-0.00133721, 0.038638, 0.999252], true],
["Land_BagFenceRound", [6389.32, 14092.7, 330.744], [0.999961, 0.00851888, 0.00232453], [-0.00265204, 0.0386379, 0.99925], true],
["Land_BagFenceRound", [6395.99, 14091.1, 330.813], [0, 0.999253, -0.0386349], [-0.00133721, 0.0386349, 0.999252], true],
["Land_BagFenceRound", [6397.56, 14092.7, 330.755], [-1, 0.000445045, -1.72085e-005], [0, 0.038638, 0.999253], true],
["Land_BagFenceRound", [6395.99, 14094.2, 330.693], [-0.00138983, -0.999252, 0.0386361], [-0.00133721, 0.038638, 0.999252], true],
["Land_BagFenceRound", [6394.96, 14095.1, 330.657], [-0.999999, 0.000393378, -0.00135342], [-0.00133721, 0.038638, 0.999252], true],
["Land_BagFenceRound", [6393.4, 14096.7, 330.595], [-0.00138983, -0.999252, 0.0386361], [-0.00133721, 0.038638, 0.999252], true],
["Land_BagFenceRound", [6391.81, 14095.1, 330.654], [0.999964, 0.00846808, 0.00101073], [-0.00133721, 0.038638, 0.999252], true],
["Land_BagFenceRound", [6392.47, 14229.1, 325.171], [0, 0.999201, -0.03997], [-0.00133721, 0.03997, 0.9992], true],
["Land_BagFenceRound", [6394.04, 14230.7, 325.112], [-0.999999, 0.000391574, -0.00135395], [-0.00133721, 0.03997, 0.9992], true],
["Land_BagFenceRound", [6390.89, 14230.6, 325.108], [0.999964, 0.00846942, 0.000999441], [-0.00133721, 0.03997, 0.9992], true],
["Land_BagFenceRound", [6389.89, 14231.6, 325.068], [0, 0.999201, -0.03997], [-0.00133721, 0.03997, 0.9992], true],
["Land_BagFenceRound", [6389.9, 14234.7, 324.945], [-0.00138983, -0.9992, 0.0399681], [-0.00133721, 0.03997, 0.9992], true],
["Land_BagFenceRound", [6388.31, 14233.1, 325.006], [0.999964, 0.00846942, 0.000999441], [-0.00133721, 0.03997, 0.9992], true],
["Land_BagFenceRound", [6394.98, 14231.6, 325.077], [0, 0.999201, -0.0399655], [-0.00133721, 0.0399655, 0.9992], true],
["Land_BagFenceRound", [6396.56, 14233.1, 325.017], [-0.999999, 0.00039158, -0.00135394], [-0.00133721, 0.0399655, 0.9992], true],
["Land_BagFenceRound", [6394.99, 14234.7, 324.953], [-0.00138983, -0.9992, 0.0399636], [-0.00133721, 0.0399655, 0.9992], true],
["Land_BagFenceRound", [6393.96, 14235.6, 324.919], [-0.999999, 0.000398787, -0.00135184], [-0.00133721, 0.0346421, 0.999399], true],
["Land_BagFenceRound", [6392.4, 14237.1, 324.865], [-0.00138983, -0.999399, 0.0346402], [-0.00133721, 0.0346421, 0.999399], true],
["Land_BagFenceRound", [6390.81, 14235.5, 324.916], [0.999964, 0.00846398, 0.00104458], [-0.00133721, 0.0346421, 0.999399], true],
["Ins_WarfareBArtilleryRadar", [6359.92, 14122.2, 340.886], [0, 0.999253, -0.0386349], [-0.00533768, 0.0386344, 0.999239], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [6409.28, 14203.8, 326.907], [-0.998554, 0.0537102, -0.00221993], [0, 0.0412964, 0.999147], true],
["Land_Market_stalls_01_EP1", [6395.77, 14179, 327.735], [0.999993, -0.00352102, 0.00148388], [-0.00133721, 0.0412978, 0.999146], true],
["Land_CratesWooden_F", [6385.95, 14177.1, 327.635], [0.432675, 0.900604, -0.0412965], [0.0166736, 0.0378047, 0.999146], true],
["Land_Stanek_1C", [6381.05, 14183.2, 327.783], [0, 0.999147, -0.0413008], [-0.00399675, 0.0413004, 0.999139], true],
["Land_Carpet_rack_EP1", [6380.71, 14179.5, 327.565], [0.997868, -0.0649148, 0.0066747], [-0.00399675, 0.0412961, 0.999139], true],
["Land_Market_stalls_01_EP1", [6380.82, 14165.4, 328.284], [0.99999, -0.00346672, 0.00279758], [-0.00265204, 0.0412963, 0.999143], true],
["Land_Market_stalls_01_EP1", [6393.34, 14155.7, 328.699], [0.74395, -0.667665, 0.0275986], [0, 0.0413008, 0.999147], true],
["Land_stand_small_EP1", [6388.68, 14164.7, 327.915], [0, 0.999147, -0.0412979], [-0.00133721, 0.0412978, 0.999146], true],
["Land_transport_cart_EP1", [6388.52, 14169.8, 327.862], [0, 0.999147, -0.0412979], [-0.00133721, 0.0412978, 0.999146], true],
["Land_GeneralStore_01a_PMC", [6381.08, 14134.3, 329.909], [0, 0.999201, -0.03997], [-0.00267442, 0.0399699, 0.999197], true],
["Land_Ind_Workshop01_03", [6349.6, 14204.7, 327.166], [-0.00432894, 0.99915, -0.041005], [-0.00575148, 0.0409798, 0.999143], true],
["INS_WarfareBFieldhHospital", [6506.31, 14194.7, 325.62], [0.0212435, 0.999218, -0.0333358], [0.00133688, 0.033315, 0.999444], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [6520.67, 14149.4, 328.418], [0, 0.999608, -0.0279873], [0.00800059, 0.0279864, 0.999576], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [6479.74, 14149.5, 328.752], [0, 0.9994, -0.0346473], [0.00799344, 0.0346462, 0.999368], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [6513.04, 14205.8, 326.686], [0.00512827, -0.999432, 0.0333077], [0.00133688, 0.033315, 0.999444], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [6524, 14205.8, 326.653], [0.00512823, -0.999432, 0.0332923], [0.00399666, 0.0333129, 0.999437], true],
["Gue_WarfareBLightFactory", [6520.15, 14218.9, 324.211], [0, 0.999353, -0.0359782], [0.00265199, 0.0359781, 0.999349], true],
["CDF_WarfareBUAVterminal", [6424.96, 14206.5, 328.024], [0, 0.999147, -0.0412964], [0, 0.0412964, 0.999147], true],
["INS_WarfareBVehicleServicePoint", [6460.1, 14146.1, 329.584], [-0.810919, 0.583968, -0.0373064], [-0.0256017, 0.0282863, 0.999272], true],
["USMC_WarfareBFieldhHospital", [6519.53, 14178.6, 325.388], [0.0510532, 0.99814, -0.0333128], [0.0056856, 0.0330652, 0.999437], true],
["USMC_WarfareBFieldhHospital", [6493.95, 14180, 325.466], [-0.0618634, -0.997474, 0.0349085], [0.00532655, 0.0346451, 0.999385], true],
["WarfareBAircraftFactory_CDF", [6421.88, 14113.1, 335.497], [0.771679, 0.635366, -0.0286792], [0.00532655, 0.0386344, 0.999239], true],
["MASH_EP1", [6412.29, 14149.3, 329.219], [0.995822, -0.0912944, -0.00198877], [0.00562504, 0.0395902, 0.9992], true],
["MASH_EP1", [6411.52, 14141.9, 329.519], [0.995837, -0.0911213, 0.00243388], [0.00133688, 0.0412978, 0.999146], true],
["Fortress2", [6423.24, 14134.5, 330.038], [-0.171599, -0.984414, 0.0385196], [0.00265199, 0.0386379, 0.99925], true],
["USMC_WarfareBBarracks", [6474.73, 14232.4, 323.865], [-0.998898, -0.0469023, 0.00181342], [0, 0.0386349, 0.999253], true],
["Land_fort_artillery_nest", [6435.62, 14172.7, 327.225], [-0.992056, 0.125789, -0.00106311], [0.00399666, 0.0399652, 0.999193], true],
["Land_fort_artillery_nest", [6453.07, 14170.7, 327.233], [0.997423, -0.0717333, -0.00112043], [0.00399666, 0.0399652, 0.999193], true],
["Land_Fort_Watchtower", [6444.4, 14147.8, 330.191], [-0.842719, 0.53814, -0.0151847], [0.00666787, 0.0386372, 0.999231], true],
["Land_Barn_W_02", [6367.06, 14222.4, 328.082], [-0.793988, -0.607075, 0.0322936], [0.0100042, 0.0400656, 0.999147], true],
["Land_A_statue02", [6388.23, 14206.4, 327.75], [0, 0.999147, -0.0412979], [-0.00133721, 0.0412978, 0.999146], true],
["Land_A_statue01", [6444.07, 14216.5, 329.417], [0, 0.999253, -0.038638], [0, 0.038638, 0.999253], true],
["Land_Market_shelter_EP1", [6366.96, 14195.7, 327.617], [0, 0.999147, -0.0412979], [-0.00133721, 0.0412978, 0.999146], true],
["TK_GUE_WarfareBContructionSite_Base_EP1", [6405.91, 14221.5, 326.335], [0.999054, -0.0434591, 0.00179624], [0, 0.0412964, 0.999147], true],
["TK_GUE_WarfareBContructionSite_Base_EP1", [6399.85, 14221.8, 326.316], [0.999053, -0.0433997, 0.00318893], [-0.00133721, 0.042629, 0.99909], true],
["TK_GUE_WarfareBContructionSite_Base_EP1", [6393.77, 14222, 326.296], [0.999053, -0.0433997, 0.00318875], [-0.00133721, 0.0426248, 0.99909], true],
["TK_WarfareBContructionSite1_Base_EP1", [6399.91, 14221.8, 328.918], [0.9997, -0.0243707, 0.00237788], [-0.00133721, 0.042629, 0.99909], true],
["Land_Shed_W03", [6406.81, 14226.7, 325.714], [0.997499, -0.0706248, 0.00291904], [0, 0.0412964, 0.999147], true],
["Land_Hlaska", [6483.13, 14208.9, 328.683], [-0.51503, 0.856417, -0.0359749], [-0.0173946, 0.0315184, 0.999352], true],
["Land_Farm_WTower", [6506.02, 14114.4, 344.644], [0, 0.999608, -0.0279873], [0.0146639, 0.0279843, 0.999501], true],
["TK_GUE_WarfareBContructionSite1_Base_EP1", [6387.01, 14188.3, 327.692], [0.722192, -0.691062, 0.0295323], [-0.00133721, 0.0413007, 0.999146], true],
["Land_fort_rampart", [6379.74, 14104.6, 329.954], [-0.459793, 0.887185, -0.038638], [-0.0201334, 0.0330841, 0.99925], true],
["Land_fort_rampart", [6387.56, 14106.3, 329.911], [0.0665621, 0.997044, -0.0383713], [-0.00265204, 0.0386333, 0.99925], true],
["Land_CamoNet_NATO", [6366.08, 14099.8, 331.195], [-0.255861, -0.96609, -0.0347068], [-0.0235678, -0.0296575, 0.999282], true],
["LAV25_HQ_unfolded", [6380.27, 14092.3, 330.29], [0, 0.999253, -0.0386349], [-0.00399675, 0.0386346, 0.999245], true],
["Land_Cargo_Tower_V1_F", [6422.12, 14087.6, 343.332], [0, 1, 0], [0, 0, 1], true],
["RU_WarfareBFieldhHospital", [6406.56, 14085.1, 330.255], [0, 0.999253, -0.0386334], [0.00265199, 0.0386333, 0.99925], true],
["PowGen_Big", [6429.09, 14147.3, 329.595], [-0.636904, 0.770424, -0.0282709], [0.00399666, 0.0399697, 0.999193], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [4409.67, 10735.2, 340.096], [-0.867094, -0.498145, 0], [0, 0, 1], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [4419.81, 10717, 340.096], [-0.867094, -0.498145, 0], [0, 0, 1], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [4398.67, 10743.8, 340.096], [-0.256868, -0.966447, 0], [0, 0, 1], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [4421.59, 10703.3, 340.096], [0.966272, -0.257523, 0], [0, 0, 1], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [4366.53, 10731.8, 340.096], [0.499347, -0.866402, 0], [0, 0, 1], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [4384.77, 10742, 340.096], [0.499347, -0.866402, 0], [0, 0, 1], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [4358.01, 10720.8, 340.096], [0.966806, -0.255512, 0], [0, 0, 1], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [4370.01, 10688.7, 340.096], [0.864791, 0.502132, 0], [0, 0, 1], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [4359.77, 10706.9, 340.096], [0.864791, 0.502132, 0], [0, 0, 1], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [4381.04, 10680.2, 340.096], [0.252401, 0.967623, 0], [0, 0, 1], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [4395, 10682.1, 340.096], [0.499347, -0.866402, 0], [0, 0, 1], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [4413.25, 10692.3, 340.096], [0.499347, -0.866402, 0], [0, 0, 1], true],
["Land_Mil_Barracks_i", [4391.8, 10695.4, 340.368], [-0.865378, -0.501119, 0], [0, 0, 1], true],
["Land_Mil_Barracks_i", [4402.65, 10701.7, 340.368], [-0.865378, -0.501119, 0], [0, 0, 1], true],
["CampEast", [4413.24, 10700.9, 340.352], [0.483345, -0.87543, 0], [0, 0, 1], true],
["CampEast", [4415.81, 10712.7, 340.352], [0.483345, -0.87543, 0], [0, 0, 1], true],
["CampEast", [4405.38, 10731.7, 340.352], [-0.493168, 0.869934, 0], [0, 0, 1], true],
["CampEast", [4393.27, 10737, 340.352], [-0.475448, 0.879744, 0], [0, 0, 1], true],
["Land_Mil_Barracks_i", [4376.92, 10722.4, 340.368], [0.866958, 0.498381, 0], [0, 0, 1], true],
["Land_Mil_Barracks_i", [4387.79, 10728.6, 340.368], [0.866958, 0.498381, 0], [0, 0, 1], true],
["Land_Mil_Barracks_i", [4391.19, 10712.8, 340.368], [-0.49563, 0.868534, 0], [0, 0, 1], true],
["Land_BagBunker_Tower_F", [4375.23, 10689, 341.212], [-0.519974, 0.854182, 0], [0, 0, 1], true],
["Land_BagBunker_Tower_F", [4362.88, 10711.3, 341.212], [-0.519974, 0.854182, 0], [0, 0, 1], true],
["Land_Razorwire_F", [4373.22, 10702.1, 339.755], [0, 1, 0], [0, 0, 1], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [4861.41, 9931.27, 340.096], [-0.867094, -0.498145, 0], [0, 0, 1], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [4871.55, 9913.01, 340.096], [-0.867094, -0.498145, 0], [0, 0, 1], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [4850.41, 9939.8, 340.096], [-0.256868, -0.966447, 0], [0, 0, 1], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [4873.34, 9899.29, 340.096], [0.966272, -0.257523, 0], [0, 0, 1], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [4818.27, 9927.81, 340.096], [0.499347, -0.866402, 0], [0, 0, 1], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [4836.51, 9937.99, 340.096], [0.499347, -0.866402, 0], [0, 0, 1], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [4809.75, 9916.8, 340.096], [0.966806, -0.255512, 0], [0, 0, 1], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [4821.75, 9884.73, 340.096], [0.864791, 0.502132, 0], [0, 0, 1], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [4811.51, 9902.94, 340.096], [0.864791, 0.502132, 0], [0, 0, 1], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [4832.78, 9876.25, 340.096], [0.252401, 0.967623, 0], [0, 0, 1], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [4846.75, 9878.1, 340.096], [0.499347, -0.866402, 0], [0, 0, 1], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [4864.99, 9888.28, 340.096], [0.499347, -0.866402, 0], [0, 0, 1], true],
["Land_Mil_Barracks_i", [4843.54, 9891.44, 340.368], [-0.865378, -0.501119, 0], [0, 0, 1], true],
["Land_Mil_Barracks_i", [4854.4, 9897.71, 340.368], [-0.865378, -0.501119, 0], [0, 0, 1], true],
["CampEast", [4864.98, 9896.93, 340.392], [0.483345, -0.87543, 0], [0, 0, 1], true],
["CampEast", [4867.55, 9908.68, 340.392], [0.483345, -0.87543, 0], [0, 0, 1], true],
["CampEast", [4857.12, 9927.7, 340.392], [-0.493168, 0.869934, 0], [0, 0, 1], true],
["CampEast", [4845.02, 9933.07, 340.392], [-0.475448, 0.879744, 0], [0, 0, 1], true],
["Land_Mil_Barracks_i", [4828.66, 9918.43, 340.368], [0.866958, 0.498381, 0], [0, 0, 1], true],
["Land_Mil_Barracks_i", [4839.53, 9924.67, 340.368], [0.866958, 0.498381, 0], [0, 0, 1], true],
["Land_Mil_Barracks_i", [4842.93, 9908.85, 340.368], [-0.49563, 0.868534, 0], [0, 0, 1], true],
["Land_BagBunker_Tower_F", [4826.97, 9885, 341.212], [-0.519974, 0.854182, 0], [0, 0, 1], true],
["Land_BagBunker_Tower_F", [4814.62, 9907.32, 341.212], [-0.519974, 0.854182, 0], [0, 0, 1], true],
["Land_Razorwire_F", [4824.96, 9898.18, 339.755], [0, 1, 0], [0, 0, 1], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [4763.47, 2504.73, 10.0804], [-0.867017, -0.497946, 0.0181999], [0.0133317, 0.0133305, 0.999822], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [4773.61, 2486.47, 10.0964], [-0.867094, -0.498145, 0], [0, 0, 1], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [4752.47, 2513.26, 10.0133], [-0.256845, -0.966315, 0.0163085], [0.0133317, 0.0133305, 0.999822], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [4775.4, 2472.75, 10.0964], [0.966272, -0.257523, 0], [0, 0, 1], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [4720.33, 2501.27, 10.05], [0.499347, -0.866325, -0.0115467], [0, -0.0133272, 0.999911], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [4738.57, 2511.45, 10.0964], [0.499347, -0.866402, 0], [0, 0, 1], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [4711.81, 2490.26, 10.0964], [0.966806, -0.255512, 0], [0, 0, 1], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [4723.81, 2458.19, 10.063], [0.864714, 0.501934, 0.0182223], [-0.0133317, -0.0133305, 0.999822], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [4713.57, 2476.4, 10.0964], [0.864791, 0.502132, 0], [0, 0, 1], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [4734.84, 2449.71, 9.99637], [0.252401, 0.967623, 0], [0, 0, 1], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [4748.81, 2451.57, 10.0873], [0.499347, -0.866325, -0.0115467], [0, -0.0133272, 0.999911], true],
["TK_GUE_WarfareBBarrier10xTall_EP1", [4767.05, 2461.75, 10.0964], [0.499347, -0.866402, 0], [0, 0, 1], true],
["Land_Mil_Barracks_i", [4745.6, 2464.9, 10.3684], [-0.865378, -0.501119, 0], [0, 0, 1], true],
["Land_Mil_Barracks_i", [4756.46, 2471.17, 10.3684], [-0.865378, -0.501119, 0], [0, 0, 1], true],
["CampEast", [4767.04, 2470.39, 10.3497], [0.483345, -0.87543, 0], [0, 0, 1], true],
["CampEast", [4769.61, 2482.15, 10.3519], [0.483345, -0.87543, 0], [0, 0, 1], true],
["CampEast", [4759.18, 2501.17, 10.3519], [-0.493168, 0.869934, 0], [0, 0, 1], true],
["CampEast", [4747.08, 2506.54, 10.3519], [-0.475448, 0.879744, 0], [0, 0, 1], true],
["Land_Mil_Barracks_i", [4730.72, 2491.9, 10.2766], [0.866881, 0.498182, 0.0182012], [-0.0133317, -0.0133305, 0.999822], true],
["Land_Mil_Barracks_i", [4741.59, 2498.14, 10.3684], [0.866958, 0.498381, 0], [0, 0, 1], true],
["Land_Mil_Barracks_i", [4744.99, 2482.31, 10.2985], [-0.495586, 0.868545, -0.00497201], [0.0133317, 0.0133305, 0.999822], true],
["Land_BagBunker_Tower_F", [4729.03, 2458.47, 11.1947], [-0.519974, 0.854182, 0], [0, 0, 1], true],
["Land_BagBunker_Tower_F", [4716.68, 2480.79, 11.2118], [-0.519974, 0.854182, 0], [0, 0, 1], true],
["Land_Razorwire_F", [4727.02, 2471.64, 9.75507], [0, 1, 0], [0, 0, 1], true]
];

{
    private _vehicle = (_x select 0) createVehicle (_x select 1);
    _vehicle allowDamage true;
    _vehicle setPosWorld (_x select 1);
    _vehicle setVectorDirAndUp [_x select 2, _x select 3];
    _vehicle enableSimulationGlobal (_x select 4);
    _vehicle setVariable ["ExileIsLocked", -1, true];
    
    if (_vehicle isKindOf "Exile_RussianRouletteChair") then
    {
        ExileRouletteChairs pushBack _vehicle;
        ExileRouletteChairPositions pushBack [_x select 1, getDir _vehicle];
    };
}
forEach _vehicles;

// 0 Simple Objects
private _invisibleSelections = ["zasleh", "zasleh2", "box_nato_grenades_sign_f", "box_nato_ammoord_sign_f", "box_nato_support_sign_f"];
private _simpleObjects = [

];

{
    private _simpleObject = createSimpleObject [_x select 0, _x select 1];
    _simpleObject setVectorDirAndUp [_x select 2, _x select 3];
    
    {
        if ((toLower _x) in _invisibleSelections) then 
        {
            _simpleObject hideSelection [_x, true];
        };
    }
    forEach (selectionNames _simpleObject);
}
forEach _simpleObjects;