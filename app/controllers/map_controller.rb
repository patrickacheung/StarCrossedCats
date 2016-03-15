class MapController < ApplicationController
  layout 'application'

  def index
    @star_index= [[0,-8,23], [1,-11,27], [2,-24,43], [3,-36,86], [4,-38,82], [5,-64,99], [6,-35,105]]
    @star_index_2 =
    [[0, 0.010128, 0.007897],
    [1, -0.007201, -0.059107],
    [2, -0.043974, -0.131365],
    [3, -0.118180, -0.175304],
    [4, -0.200728, -0.185075],
    [5, -0.199642, -0.239467],
    [6, -0.106414, -0.221875]]

    @ursa_minor = [[-56.719820407865846, 63.53865854627065, 1.97, 0.451],
    [-60.71397669114158, 61.76219838208992, 4.35, 0.046],
    [-65.00387970224631, 58.951532117523236, 4.21, 0.706],
    [-67.31972698334788, 54.34231659321388, 4.29, 0.095],
    [-67.3528686828248, 49.497369990196, 2.07, 1.086],
    [-71.5366597394729, 49.16277085005114, 3, 0.095],
    [-70.72444026507081, 54.672918006462865, 4.95, 0.396]]

    @cass = [[-62.47298408230293, 93.27744624470772, 2.28, 0.317],
    [-58.58349742032264, 96.30225513999474, 2.24, 0.902],
    [-56.423270540700805, 92.1484634181802, 2.15, -0.257],
    [-52.81070367527055, 92.35201089213693, 2.66, 0.144],
    [-50.15511281563523, 88.35343443176095, 3.35, -0.196]]

    @herc =[[72.32186493397226, 58.73488998678299, 3.82, -0.167],
    [63.25579998869107, 63.57998683761968, 3.86, 0.946],
    [61.44215920881878, 57.28964152466115, 4.15, 0.008],
    #[60.6607053801037, 55.65766754893682, 3.16, 1.038],
    #[62.281399041052204, 49.09632202161713, 3.48, 0.82],
    [66.91073832119403, 47.30088805964469, 4.2, -0.005],
    [72.48545394135964, 44.96328765549214, 3.91, -0.11],
    [70.84771894127014, 42.892555302905976, 4.23, -0.005],
    [55.18614811881874, 68.41202545411697, 3.84, 0.008],
    [54.90964606705721, 66.23447605990913, 3.7, 0.902],
    [52.441048258449584, 64.37394742885766, 3.42, 0.706],
    [49.48253688169126, 61.55574695086482, 4.41, 1.038],
    [46.82444649322471, 58.57650066401637, 3.12, 0.095],
    [52.659762488312225, 49.71201668506876, 2.81, 0.509],
    #[52.85352288546686, 53.824497805117495, 3.92, 0.021],
    #[39.00784184294088, 49.78714215025851, 2.78, 0.82],
    [35.533667686834, 62.18150283419136, 2.78, 1.748],
    [35.25860776132844, 48.70014186827449, 3.74, 0.241],
    [60.6607053801037, 55.65766754893682, 3.16, 1.038],
    [62.281399041052204, 49.09632202161713, 3.48, 0.82],
    [52.85352288546686, 53.824497805117495, 3.92, 0.021],
    [52.659762488312225, 49.71201668506876, 2.81, 0.509],
    [39.00784184294088, 49.78714215025851, 2.78, 0.82]]

    @cygnus = [[84.28465473922235, 88.00237102723138, 1.25, 0.071],
    [78.14851880044684, 88.13280407718472, 2.23, 0.48],
    [64.95076097947003, 86.02910501051893, 4.68, 0.82],
    [84.40142895221601, 72.14658480862752, 3.8, 0.902],
    [83.61163031952678, 74.5511964701395, 3.76, 0.144],
    [71.01547433997278, 86.63527173715852, 3.89, 0.902],
    [62.118247440820205, 85.4325754700056, 5.12, -0.03],
    [78.70931690523643, 79.75684726877384, 2.86, 0.008],
    [75.95004027456424, 95.71503443542713, 2.48, 0.902],
    [76.75382881545899, 102.45206254748801, 3.21, 0.82],
    [78.14851880044684, 88.13280407718472, 2.23, 0.48]]

    @cep = [[-82.13353286616359, 78.35743877139714, 3.41, 0.902],
    [-74.80578563702515, 89.46936813130509, 4.07, 0.603],
    [-77.13503897254691, 89.60501275212184, 4.18, 0.266],
    [-82.24088952938793, 76.20517421899207, 4.21, 0.192],
    [-79.00161044214529, 80.82791028131557, 2.45, 0.192],
    [-76.93762739622458, 88.33466265542842, 3.39, 0.946],
    [-68.93465008747467, 83.82473445252737, 3.5, 0.902],
    [-61.007725824011196, 74.68506178490374, 3.21, 0.946],
    [-72.4608967362724, 75.97385982287703, 3.23, -0.196],
    [-76.93762739622458, 88.33466265542842, 3.39, 0.946],
    [-79.00161044214529, 80.82791028131557, 2.45, 0.192]]

    @bootes = [[-4.189884440178517, 17.59904978710084, 4.05, 1.137],
    [-1.0617695788356545, 16.11187631022181, 4.5, 0.451],
    [5.290176956119417, 16.96938991448574, 2.68, 0.54],
    [15.065783885110719, 20.888926360765137, -0.05, 0.991],
    [10.803537995436185, 28.884612253245457, 3.78, 0.095],
    [47.29527038567242, 22.19546817370333, 3.57, 1.038],
    [15.642202175441941, 27.45866943037761, 4.49, -0.005],
    [67.26212525580937, 23.827593553351978, 3.04, 0.192],
    [67.61916713049654, 29.961272652142473, 3.49, 0.82],
    [53.11297832518047, 31.56844805972882, 3.46, 0.82],
    [39.38456418115467, 25.215755247572694, 2.35, 0.021],
    [15.065783885110719, 20.888926360765137, -0.05, 0.991]]

    @hydra = [[42.34294708626146, 59.801023829862295, 3.11, 0.82],
    [43.25091292895159, 63.67929738739027, 4.3, -0.167],
    [40.71827508091497, 61.47642150600852, 3.38, 0.54],
    [40.25491491418816, 63.81805146635724, 4.14, 0.046],
    [42.71351904685987, 64.68538747213461, 4.45, 0.991],
    [48.77116204315274, 57.4702311910398, 3.89, 0.008],
    [56.489231299508596, 54.019263072108195, 3.9, 1.038],
    [61.48819771321197, 60.95437440195402, 1.99, 1.038],
    [71.23495201396246, 60.555555014239125, 4.11, 0.743],
    [73.00498531238972, 55.50342217570918, 3.61, 0.902],
    [79.98689104068197, 56.34894082271073, 3.83, 1.086],
    [85.05239051507039, 52.43964303588335, 3.11, 0.902],
    [-75.92491606546479, 61.87384591601121, 3.54, 0.82],
    [-70.72798402580463, 62.5935599450369, 4.29, -0.63],
    [-51.811302643192576, 50.4260805776943, 4.94, 0.902],
    [-48.902078609509374, 50.735857043656495, 2.99, 0.82],
    [-36.9994550746609, 56.74720406178597, 3.25, 0.991]]

    @test_all =[[-68.2677345797661, 122.84296414824333, 2.07, -0.005],
      [-60.65681090137873, 119.12247148325822, 8.43, 0.095],
      [-55.92688930541441, 114.36078903771404, 3.86, 0.144],
      [-49.185642536427906, 103.52942566069551, 3.59, 1.038],
      [-60.13060317538982, 121.938568885529, 3.27, 1.038],
      [-52.89284303072127, 117.10259623397017, 2.07, 1.416],
      [-43.03555024944682, 108.5588919694201, 2.1, -0.03],
      [83.38682532607828, 79.04154338685387, 4.51, 1.038],
      [79.89108837681955, 70.94142583700109, 4.78, 0.192],
      [89.8768502325212, 67.61263344121227, 4.28, 1.086],
      [-81.14500227763612, 69.68669796492989, 4.6, 0.902],
      [-51.50752189153044, 107.45130900500214, 3.83, 1.137],
      [-47.55808020687604, 109.87870307613484, 5.27, 1.038],
      [-47.3120038030551, 110.51084690675545, 3.86, 0.902],
      [-45.82547904183827, 110.06043972248673, 4.23, 0.902],
      [37.6806057884103, 120.10462765844237, 3.78, 0.046],
      [48.02275511687515, 127.87884302534853, 2.9, 0.54],
      [62.179186187336235, 135.8417386499563, 3.86, 0.021],
      [59.92861765139305, 132.06580576436073, 2.95, 0.603],
      [65.35370193665068, 136.3305806980559, 3.65, 0.342],
      [66.84239907442871, 137.61103768982392, 4.04, -0.005],
      [70.94046831273462, 148.7378999297303, 4.22, 1.542],
      [62.19140040393345, 145.7323626101109, 3.73, 1.542],
      [52.26412969380271, 148.51948052537136, 4.05, 1.137],
      [49.57897655216984, 150.6681443801803, 3.27, 0.095],
      [41.76006366369658, 156.03137034478993, 3.68, 0.946],
      [66.00648685363538, 134.73924080716316, 4.8, -0.226],
      [53.507226295335805, 138.62447068458556, 4.17, 0.82],
      [-68.2677345797661, 122.84296414824333, 2.07, -0.005],
      [47.36539432856037, 139.23096897602483, 5.43, -0.11],
      [43.50527798688678, 139.3689989480416, 4.29, -0.03],
      [47.294252649621406, 84.95953653537495, 4.02, 0.991],
      [46.85462268748863, 86.75423233891348, 2.99, 0.021],
      [48.725992023261334, 97.08097672125885, 2.72, 1.038],
      [47.74322658969436, 98.90821114203887, 0.76, 0.192],
      [46.12618403818838, 101.09406873864373, 3.71, 0.82],
      [41.579526678226244, 108.08391480087516, 3.24, 0.008],
      [40.934299270569255, 103.07247674177339, 3.87, 0.423],
      [39.61824642329523, 96.13082426449016, 3.36, 0.266],
      [30.259761584456594, 95.51304652437054, 3.43, -0.005],
      [28.976680529572697, 94.88506744076375, 4.02, 0.946],
      [-16.66980097316672, 103.81859169285222, 3.65, -0.196],
      [-19.244868758446692, 98.82702960437362, 2.84, -0.196],
      [-24.633015351111773, 101.01273081971281, 2.84, 1.038],
      [-25.3555144936273, 101.4784569091051, 3.31, -0.226],
      [-27.199054446426903, 98.20476037173019, 3.12, 1.137],
      [-24.853704222983712, 96.58711313489964, 4.06, 1.086],
      [-28.729972127256133, 104.35558151777498, 3.6, -0.03],
      [-30.365092948200424, 99.16367700526979, 3.77, 1.137],
      [-37.452060390101906, 131.20051175414687, 3.88, 0.046],
      [-37.75549557015874, 129.68156703193023, 2.64, 0.144],
      [-35.422215540481425, 126.20540823821297, 2.01, 0.991],
      [-27.022545803269246, 118.60586268568238, 3.61, -0.03],
      [-2.0060708502819646, 93.74501786260335, 1.65, -0.056],
      [-5.661884537912687, 83.27046048011542, 2.65, 0.021],
      [-12.543238725594541, 79.59028640948765, 1.9, 0.071],
      [-17.412593351056564, 85.43304291659423, 0.08, 1.478],
      [-17.21182384043031, 88.82130356604316, 3.03, 0.266],
      [-14.646462912250254, 89.72812930951085, 3.18, -0.167],
      [-14.981355658234198, 90.42839541475047, 3.69, 1.086],
      [-9.410095544764063, 96.15933217405687, 2.69, 1.038],
      [-4.189884440178517, 17.59904978710084, 4.05, 1.137],
      [-1.0617695788356545, 16.11187631022181, 4.5, 0.451],
      [10.803537995436185, 28.884612253245457, 3.78, 0.095],
      [15.065783885110719, 20.888926360765137, -0.05, 0.991],
      [15.642202175441941, 27.45866943037761, 4.49, -0.005],
      [5.290176956119417, 16.96938991448574, 2.68, 0.54],
      [47.29527038567242, 22.19546817370333, 3.57, 1.038],
      [39.38456418115467, 25.215755247572694, 2.35, 0.021],
      [67.61916713049654, 29.961272652142473, 3.49, 0.82],
      [53.11297832518047, 31.56844805972882, 3.46, 0.82],
      [66.15536784765969, 131.49527265596544, 4.44, 0.317],
      [67.26212525580937, 23.827593553351978, 3.04, 0.192],
      [59.918817665368294, 130.9110538388046, 5.04, 0.342],
      [-37.81174478770956, 87.93555691366963, 4.55, 0.021],
      [-39.9765308094955, 81.24962886020462, 4.39, 1.478],
      [-43.686103074904445, 76.72539483606555, 4.59, 0.071],
      [-30.43184531089319, 78.62126576903431, 4.03, 0.54],
      [36.509620613227796, 56.48277394121923, 4.26, 0.144],
      [-25.534975047388805, 83.31929152252287, 4.43, 0.046],
      [28.025224815496095, 57.10082565546446, 3.94, 0.902],
      [34.2529769174268, 66.95203903066033, 3.53, 1.086],
      [15.883002045204206, 53.45613841589404, 4.03, 0.82],
      [24.16530481678855, 56.2726327523348, 4.66, 0.046],
      [-61.69753398439491, 11.231348023174087, 2.89, 0.021],
      [-43.87160714230903, 14.68490415938333, 4.24, 0.54],
      [46.0597067491582, 104.26777372137171, 1.98, -0.226],
      [47.22734047035446, 98.88725291725963, -1.44, 0.021],
      [48.702857326150536, 96.67750364439512, 4.36, -0.167],
      [55.55448349402478, 98.22776159533917, 3.02, -0.167],
      [43.98212424426452, 94.85550296998234, 4.08, 1.086],
      [48.25167902446243, 94.40596334688132, 4.11, -0.03],
      [59.40706247190635, 97.15189690075465, 4.01, -0.196],
      [59.830902629282235, 101.3295177214591, 1.5, -0.196],
      [29.519812853023836, 78.32105641203701, 2.89, -0.03],
      [62.616378483266686, 96.48550155224504, 2.45, -0.11],
      [58.180771119594525, 95.54274189576748, 4.37, -0.29],
      [33.700327563225144, 76.97706390192057, 0.4, 0.396],
      [58.417316390958284, 98.26633078512782, 1.83, 0.48],
      [31.09675675320883, 114.80956665452813, 3.58, 0.743],
      [29.14960731886533, 116.36982389588538, 3.05, 0.144],
      [31.312690509959815, 127.28796706151243, 4.08, 0.046],
      [33.62495600800721, 130.76872844498163, 4.28, 0.82],
      [35.99787337026946, 134.67244783915424, 3.69, 0.192],
      [37.601180577222785, 136.01205909042028, 2.85, 0.144],
      [31.942171888892613, 134.99028373820036, 4.51, -0.167],
      [26.978213142032327, 133.5885162732998, 3.77, 0.671],
      [21.975183841494655, 130.00596764112785, 4.49, 1.137],
      [18.46393685934729, 127.1830559078038, 4.12, 1.086],
      [20.003967117329896, 125.50049623674171, 4.13, 0.396],
      [-72.82004746238346, 93.15381979825588, 3.3, -0.138],
      [-74.0213937742959, 104.4070617685189, 1.67, 0.071],
      [-74.51864137253163, 93.80499871542055, 3.39, 1.038],
      [-70.40233645597064, 94.90161415410729, 2.74, -0.257],
      [-74.96174833743304, 98.81955967118115, 2.92, 0.241],
      [-69.83633603441108, 101.17945171305256, 3.29, -0.03],
      [-81.54098581701481, 97.01101185396327, 2.21, 0.217],
      [-85.71466363596586, 102.60081145621434, 1.86, 1.038],
      [86.67698208744116, 102.32006717662796, 3.46, -0.167],
      [81.211918061921, 115.29207909990797, -0.62, 0.266],
      [-65.52738824429224, 91.39723164039916, 3.11, -0.005],
      [-64.81286833542079, 89.28655827287363, 4.11, 0.54],
      [-70.0445102439431, 83.91349242431873, 3.9, -0.11],
      [-63.2165525693547, 79.97223138487136, 3.97, -0.167],
      [-64.00387492261858, 78.43164773378129, 2.58, -0.196],
      [-60.923854073891476, 77.64204620789165, 8.72, 0.991],
      [-58.745127404991074, 76.12033665554222, 2.2, 0.046],
      [-49.808382706479144, 81.27889963888857, 2.29, -0.226],
      [-48.23327300463526, 88.74881253546546, 0.61, -0.226],
      [-44.25726841881762, 90.68460959079414, -0.01, 0.603],
      [-45.93141544203996, 75.80735155733791, 2.55, -0.181],
      [-45.762550949023556, 70.88267159061853, 3.47, -0.196],
      [-45.586438632685145, 70.1141006752371, 3.41, -0.196],
      [-40.5448645701812, 65.92314246891748, 2.06, 0.902],
      [-50.580900871038466, 64.20797393049193, 2.75, 0.071],
      [-48.780224876710705, 67.17373129289297, 3.9, 0.82],
      [-37.22621109567007, 73.33073277764797, 2.33, -0.226],
      [-33.128304689444015, 75.24618774773592, 3.13, -0.196],
      [-74.80578563702515, 89.46936813130509, 4.07, 0.603],
      [-77.13503897254691, 89.60501275212184, 4.18, 0.266],
      [-76.93762739622458, 88.33466265542842, 3.39, 0.946],
      [-79.00161044214529, 80.82791028131557, 2.45, 0.192],
      [-82.13353286616359, 78.35743877139714, 3.41, 0.902],
      [-82.24088952938793, 76.20517421899207, 4.21, 0.192],
      [-68.93465008747467, 83.82473445252737, 3.5, 0.902],
      [-61.007725824011196, 74.68506178490374, 3.21, 0.946],
      [-72.4608967362724, 75.97385982287703, 3.23, -0.196],
      [-11.080741789741648, 139.38170574277916, 3.47, 0.095],
      [-6.684144709351036, 135.59531372429583, 2.54, 1.542],
      [-11.794015159746726, 132.41383529063512, 4.71, -0.083],
      [-16.746166457790647, 133.69437811984287, 4.27, 0.291],
      [-20.30895370056425, 137.3901631529169, 4.3, -0.005],
      [-15.521549122526585, 138.6701764195738, 4.87, 0.82],
      [-9.235842728007764, 142.2114089638716, 4.08, -0.196],
      [-12.245477645374041, 147.98202551615847, 6.47, 1.748],
      [-14.117675665388376, 158.04782889596774, 3.74, 0.991],
      [-33.40595876523225, 159.5434009288753, 3.6, 0.902],
      [-42.84040622093437, 162.5781547879073, 3.46, 0.991],
      [-81.01932639332122, 160.19272754082309, 3.56, 0.991],
      [-68.67141467448188, 170.68114675626325, 2.04, 0.902],
      [-6.883044248935069, 163.4377808307843, 3.49, 0.82],
      [-70.13998319589612, 111.6815558954061, 4.05, 0.396],
      [-63.71867242037048, 107.53243650621943, 4.11, 1.416],
      [-58.66338955623906, 106.54303914765849, 4.24, -0.11],
      [-62.26520799455487, 108.96231842309173, 4.45, -0.181],
      [-69.54195939505854, 111.83635401738154, 4.34, 0.902],
      [-39.10996740769923, 91.11893036072944, 4.07, 0.095],
      [-45.66464405270356, 94.59130635953302, 3.18, 0.291],
      [-38.75527247130334, 91.96285073627702, 4.48, -0.11],
      [61.02630091669713, 110.24382446309329, 3.85, 0.781],
      [62.34676592810649, 111.88885635800943, 4.37, 0.82],
      [61.22624391875692, 115.63746176359253, 4.36, -0.181],
      [61.342591137720376, 117.0573278326991, 3.12, 0.968],
      [58.80857447439504, 118.85701729152892, 2.65, -0.056],
      [59.889333521629496, 120.87519547410578, 3.86, 0.946],
      [69.45643902808668, 117.23026099447969, 3.96, 0.902],
      [-32.061779304353514, 10.511404943670922, 4.32, 0.396],
      [43.46945542096695, 4.594328721279599, 4.23, 0.54],
      [-0.45745122468780836, 107.3169860910002, 4.83, 0.342],
      [19.64287626380686, 5.540953822062866, 4.35, 0.991],
      [0.15960445216963326, 108.73553817191409, 4.23, 0.451],
      [-0.4588691459061528, 109.59245612385305, 4.11, 0.021],
      [-1.8614198344919055, 110.17163466591245, 4.1, 0.902],
      [-3.137855479953437, 110.24340213825351, 4.57, 0.946],
      [-5.087268143610812, 109.83436699570785, 4.74, 0.021],
      [49.685019920236925, 35.285696995871916, 4.14, -0.083],
      [45.586613103401895, 34.38380338493312, 3.66, 0.266],
      [41.86994888301038, 36.22734155764398, 2.22, 0.021],
      [41.74115979928851, 38.07640388032965, 3.81, 0.046],
      [41.87566015890982, 39.627774400363336, 4.59, 0.706],
      [43.65329056810146, 41.21736099109119, 4.14, 1.038],
      [48.30451442611177, 41.54411740954673, 4.98, 0.021],
      [-69.34203022937695, 52.88451420308849, 4.02, 0.266],
      [-69.41000895751425, 50.74013421591641, 3.02, 0.991],
      [-69.01512655194757, 45.4983447302313, 2.58, -0.03],
      [-64.52740951574354, 43.955915388884705, 2.94, 0.008],
      [-62.12651231776075, 50.69230016172028, 2.65, 0.706],
      [-75.52793551438182, 46.274445702077315, 5.17, 0.021],
      [-78.4653336073513, 48.265726079044725, 4.71, 0.82],
      [-84.59338454340211, 49.483648015748045, 4.06, 0.241],
      [-87.93146625623784, 47.49318299959113, 3.56, 0.902],
      [-85.75035700134806, 41.138231840621685, 4.7, 0.008],
      [-88.9605074972045, 43.43424779716898, 4.81, 1.137],
      [-85.22339966892937, 55.466791007138944, 4.46, 0.046],
      [89.05307188319541, 52.879222454177345, 4.08, 0.946],
      [-59.83121123227881, 84.34954799893717, 1.59, 1.677],
      [-59.873649169545516, 90.36261534057073, 0.77, -0.242],
      [-61.771281555388505, 86.20886907687101, 2.79, -0.196],
      [-57.53795948294529, 86.82030768572325, 1.25, -0.242],
      [84.28465473922235, 88.00237102723138, 1.25, 0.071],
      [78.14851880044684, 88.13280407718472, 2.23, 0.48],
      [71.01547433997278, 86.63527173715852, 3.89, 0.902],
      [64.95076097947003, 86.02910501051893, 4.68, 0.82],
      [62.118247440820205, 85.4325754700056, 5.12, -0.03],
      [84.40142895221601, 72.14658480862752, 3.8, 0.902],
      [83.61163031952678, 74.5511964701395, 3.76, 0.144],
      [78.70931690523643, 79.75684726877384, 2.86, 0.008],
      [75.95004027456424, 95.71503443542713, 2.48, 0.902],
      [76.75382881545899, 102.45206254748801, 3.21, 0.82],
      [55.4185516355994, 106.59272934417184, 4.03, -0.083],
      [58.880919054139156, 105.65011452777443, 3.64, 0.396],
      [79.8351473355519, 134.78495390276433, 4.26, 0.369],
      [61.494210572636696, 106.57758490434838, 4.27, 0.946],
      [60.13560713198234, 106.55418745798598, 4.43, 0.192],
      [60.30345289453163, 105.32019220925399, 3.77, -0.005],
      [83.83224822197732, 131.4154110082098, 3.3, 0.021],
      [-88.26650672586833, 122.77431592645041, 3.76, 0.423],
      [86.12919938359691, 126.66929942413438, 8.98, 1.242],
      [-84.52620028973143, 121.37194909433099, 4.34, 0.192],
      [85.16634493992167, 59.77050114308068, 3.73, 0.991],
      [-87.63133976687158, 120.4200978999361, 4.65, 0.946],
      [79.05503503238161, 60.78260925103668, 2.24, 1.137],
      [79.57893735969007, 56.689696717879066, 2.79, 0.603],
      [83.03252426276188, 56.864682506869286, 4.89, -0.63],
      [-81.34427197336453, 67.00553474759063, 3.07, 0.86],
      [-77.56889768491536, 69.17075637629533, 3.84, 0.82],
      [-75.26752655613805, 65.78878401553413, 4.45, 1.038],
      [-76.54284926554692, 61.94113027987039, 3.55, 0.451],
      [-77.0306282667655, 58.968896191016164, 4.57, 0.396],
      [-87.41580354051834, 49.04882273327302, 2.73, 0.82],
      [-83.99023098542523, 54.959611198465765, 3.17, -0.083],
      [-86.02884592998679, 41.37206633507701, 3.29, 0.991],
      [-89.81123179257098, 45.415663305403115, 4.01, 0.48],
      [-69.4763672653817, 39.04121700284731, 3.67, 0.021],
      [-54.785027264936, 42.7395752605571, 3.85, -0.083],
      [56.37506655920753, 118.71306607357441, 3.92, 0.54],
      [-47.01884991886088, 43.79575085086918, 3.82, 1.416],
      [60.49324521946551, 115.65490675778969, 4.47, 0.396],
      [58.99776325577763, 119.23065568977718, 5.16, 0.095],
      [59.93299137089215, 114.76247213827396, 4.7, 0.266],
      [59.92861765139305, 132.06580576436073, 2.95, 0.603],
      [29.140068527045045, 116.68529043065733, 4.25, -0.196],
      [25.337510242433464, 115.31500883923621, 2.78, 0.095],
      [23.748268418902853, 118.77818218338504, 4.36, 0.241],
      [20.529614938537105, 119.33653021151666, 4.01, -0.11],
      [19.31164709119265, 121.37579131564044, 3.93, -0.196],
      [19.32376386569161, 128.3910631949538, 4.04, 0.317],
      [65.35370193665068, 136.3305806980559, 3.65, 0.342],
      [18.08944328666294, 135.99587201703542, 3.52, 0.902],
      [11.578834855996408, 141.30821533720604, 4.8, 0.144],
      [15.845886688033868, 138.0488073295053, 3.72, 0.991],
      [25.161569274358687, 134.47253978411683, 2.97, 1.478],
      [20.83325989497532, 152.52692348274724, 4.47, 0.396],
      [7.154954848372212, 145.3108070016023, 3.89, 0.946],
      [33.538460594998796, 150.29599217358685, 4.08, 0.119],
      [33.52002063251417, 142.78426338734775, 4.26, -0.005],
      [32.08881590127018, 145.99544343290384, 3.7, 1.609],
      [37.34913956880013, 140.3230876415915, 4.22, 0.342],
      [39.99530314624565, 139.14259512366323, 4.64, -0.11],
      [49.857149650686885, 131.58702260414628, 4.49, 0.902],
      [39.64684433057439, 137.62430453562848, 4.62, -0.63],
      [51.01233070551261, 131.3056147300676, 3.81, 0.82],
      [55.17248592687609, 134.22702312859064, 3.97, 1.086],
      [54.67464659520048, 135.47095722920366, 3.55, -0.005],
      [57.88485049149271, 141.3993163328179, 4.17, 0.82],
      [60.171135143133526, 141.53118283083396, 4.3, -0.63],
      [64.85490446265851, 143.51373536064688, 4.57, 0.902],
      [67.85531769542627, 150.73593112730842, 2.88, 0.119],
      [70.75161680126935, 146.0834555971152, 4.26, 0.82],
      [69.29664821561902, 154.06528251257788, 4.11, 0.902],
      [75.67241492178056, 152.98091427360688, 4.74, 0.071],
      [87.12340406054346, 152.240229705105, 4.24, -0.11],
      [-84.64846378758324, 150.81827675395124, 3.56, -0.03],
      [44.73276259899176, 149.03104400736962, 3.8, 0.48],
      [-79.13511890666702, 152.66610500493806, 3.69, 0.706],
      [-69.15902339620976, 148.79211194412505, 0.45, -0.167],
      [51.7887086173202, 154.01471410734925, 4.45, 0.82],
      [44.887377646358104, 163.77778137474465, 4.68, 0.008],
      [9.726174136411535, 85.83061135967942, 2.87, 1.609],
      [9.535885642739636, 80.370700024645, 3.06, 0.095],
      [7.2184153391148, 72.80067644841225, 4.41, 0.991],
      [7.440490900687254, 67.52004973134014, 1.58, 0.071],
      [12.229746607614434, 66.59227018935957, 1.16, 0.902],
      [15.984915638803555, 74.11472292114746, 3.5, 0.266],
      [15.74634342697489, 78.0966578013897, 4.01, 0.636],
      [20.738887678442627, 85.49735065225005, 3.35, 0.396],
      [16.77345224831125, 85.5471749327975, 1.93, 0.021],
      [12.420549825702413, 85.65426742505618, 4.13, -0.083],
      [8.853142862292867, 87.48115450253377, 3.31, 1.609],
      [6.106942220705531, 141.47226277082154, 3, -0.03],
      [2.215935044572113, 143.6742205762763, 4.47, 1.416],
      [-1.348961531074584, 145.16414452966617, 4.79, 0.82],
      [-6.227238402633808, 147.05434250743622, 3.97, 0.743],
      [-13.732751624239029, 147.9536307659586, 2.07, 1.748],
      [-21.694780439317604, 146.52626054227034, 3.49, 0.095],
      [-25.88881323854852, 147.1579256862182, 4.11, 0.82],
      [-11.758384067464538, 153.29693597263037, 4.28, 0.396],
      [-15.734132292770683, 152.93017714709552, 3.88, 0.902],
      [-10.00091783342733, 142.47344388066062, 1.73, -0.056],
      [72.32186493397226, 58.73488998678299, 3.82, -0.167],
      [63.25579998869107, 63.57998683761968, 3.86, 0.946],
      [61.44215920881878, 57.28964152466115, 4.15, 0.008],
      [66.91073832119403, 47.30088805964469, 4.2, -0.005],
      [60.6607053801037, 55.65766754893682, 3.16, 1.038],
      [62.281399041052204, 49.09632202161713, 3.48, 0.82],
      [72.48545394135964, 44.96328765549214, 3.91, -0.11],
      [70.84771894127014, 42.892555302905976, 4.23, -0.005],
      [55.18614811881874, 68.41202545411697, 3.84, 0.008],
      [54.90964606705721, 66.23447605990913, 3.7, 0.902],
      [52.441048258449584, 64.37394742885766, 3.42, 0.706],
      [49.48253688169126, 61.55574695086482, 4.41, 1.038],
      [52.659762488312225, 49.71201668506876, 2.81, 0.509],
      [52.85352288546686, 53.824497805117495, 3.92, 0.021],
      [46.82444649322471, 58.57650066401637, 3.12, 0.095],
      [39.00784184294088, 49.78714215025851, 2.78, 0.82],
      [35.533667686834, 62.18150283419136, 2.78, 1.748],
      [35.25860776132844, 48.70014186827449, 3.74, 0.241],
      [66.8783884030586, 136.414125631766, 3.85, 0.946],
      [88.81080768401037, 148.32380006883974, 5.4, 0.636],
      [-87.69206023435667, 147.82120691472116, 5.3, 0.168],
      [-85.5695950996179, 146.11139715334437, 5.21, 0.369],
      [-82.57087303393517, 140.33724137487405, 5.12, 0.266],
      [-77.05600396873642, 137.60976305633156, 10.59, -0.63],
      [42.34294708626146, 59.801023829862295, 3.11, 0.82],
      [43.25091292895159, 63.67929738739027, 4.3, -0.167],
      [42.71351904685987, 64.68538747213461, 4.45, 0.991],
      [40.25491491418816, 63.81805146635724, 4.14, 0.046],
      [40.71827508091497, 61.47642150600852, 3.38, 0.54],
      [48.77116204315274, 57.4702311910398, 3.89, 0.008],
      [56.489231299508596, 54.019263072108195, 3.9, 1.038],
      [61.48819771321197, 60.95437440195402, 1.99, 1.038],
      [71.23495201396246, 60.555555014239125, 4.11, 0.743],
      [73.00498531238972, 55.50342217570918, 3.61, 0.902],
      [79.98689104068197, 56.34894082271073, 3.83, 1.086],
      [85.05239051507039, 52.43964303588335, 3.11, 0.902],
      [-75.92491606546479, 61.87384591601121, 3.54, 0.82],
      [-70.72798402580463, 62.5935599450369, 4.29, -0.63],
      [-48.902078609509374, 50.735857043656495, 2.99, 0.82],
      [-51.811302643192576, 50.4260805776943, 4.94, 0.902],
      [-36.9994550746609, 56.74720406178597, 3.25, 0.991],
      [-70.55396507819684, 143.76030001436447, 2.86, 0.266],
      [-55.221326638642225, 129.78100723457007, 2.82, 0.603],
      [-70.87064506756529, 127.79811605689257, 3.26, 1.542],
      [-7.433695687658947, 127.20819226911372, 3.11, 0.902],
      [-16.314353844271864, 133.31947677935673, 4.39, 0.144],
      [-20.89227683022711, 138.1225469747267, 4.4, 0.266],
      [-21.842408510035977, 128.8524984897491, 3.67, 0.902],
      [-88.07452974870719, 105.59057967593759, 4.14, 1.038],
      [-87.23769139231632, 103.75300690541432, 4.5, 1.038],
      [-82.6362378934294, 102.64225786480999, 4.52, -0.196],
      [-82.20717801169027, 98.86295839118682, 4.55, -0.083],
      [-80.3367593923006, 98.65077528355894, 4.34, 1.416],
      [-80.10175112377898, 96.71068694330744, 4.55, -0.005],
      [-78.74066560423921, 96.59784057638059, 3.76, 0.046],
      [-78.74628391936608, 94.30606035488358, 4.42, 0.86],
      [46.427600295571516, 41.0650620319891, 1.36, -0.056],
      [55.372002937131555, 25.41467773164265, 3.33, 0.071],
      [70.64204726424308, 19.198998836159173, 2.14, 0.095],
      [44.227769189679876, 23.172518479496155, 2.56, 0.119],
      [36.55037899555079, 35.34803451926132, 2.01, 0.902],
      [39.52996313755943, 39.249739563635195, 3.48, 0.021],
      [30.227623933896098, 35.04488090718043, 3.43, 0.266],
      [24.045044302689806, 39.75353077013425, 3.88, 0.902],
      [26.81669675339723, 41.79525865579239, 2.97, 0.54],
      [10.008731294432263, 26.26636019422582, 3.79, 0.902],
      [6.285941879628507, 31.722144199501507, 4.2, 0.82],
      [9.471554081930721, 35.73992426492144, 4.49, 0.192],
      [39.75539417722146, 108.47128173748077, 3.71, 0.291],
      [39.39918269590095, 110.82607522150012, 3.55, 0.071],
      [40.94696325224292, 115.1411026821093, 2.58, 0.266],
      [37.25026502413495, 118.90632949209633, 3.29, -0.005],
      [45.83237151457166, 112.21820404859248, 3.76, 0.82],
      [46.79495594285534, 114.27158103500035, 3.59, 0.451],
      [43.560889482951026, 117.20101337220532, 2.81, 0.706],
      [43.24619223303214, 122.73091204872054, 3.19, 1.086],
      [-3.613577626987073, 61.36824570761984, 4.95, -0.03],
      [-6.455194309898837, 62.28237725762345, 4.13, 0.902],
      [-7.476982941021685, 59.874566561521476, 5.41, 0.168],
      [-7.978006889652534, 50.76582972247457, 2.61, -0.03],
      [-8.485278675254094, 57.80405011914459, 3.91, 0.902],
      [-19.674263423165456, 51.991588500296594, 2.75, 0.095],
      [-22.777717942615745, 61.3822173073297, 3.25, 1.609],
      [-18.115317946143467, 68.0548067296132, 3.6, 1.038],
      [-18.93577969368288, 69.55171325928802, 3.66, -0.181],
      [-19.032557157948503, 78.73536860776764, 5.72, 0.266],
      [-21.226319009120257, 78.99090285948769, 3.42, -0.181],
      [-26.80614169262373, 78.10848724424723, 2.8, -0.196],
      [-30.772328978480765, 79.67715962715309, 3.37, -0.196],
      [-34.54380499755673, 82.10772266439592, 3.88, -0.005],
      [-36.24107539857406, 85.01605423844379, 3.41, 0.82],
      [-38.38957210364006, 78.56335156340342, 2.3, -0.211],
      [-33.747998713582774, 76.09072472892677, 2.68, -0.196],
      [-28.701882953731506, 76.29108668783505, 6.21, 0.046],
      [-26.04011840352621, 72.60685019590747, 3.57, 1.137],
      [-19.430285032183914, 74.181910497392, 3.97, 0.008],
      [10.235235060787625, 45.27698187600632, 3.14, 1.416],
      [6.809677238140214, 45.528653184977394, 3.82, 0.046],
      [-0.1969126362252746, 48.81693238080807, 3.96, 0.396],
      [-11.286561549303148, 64.25430296913804, 4.61, 0.046],
      [-2.610719875593545, 55.66361121058311, 4.25, 1.137],
      [-22.230934054674645, 66.40033314307367, 4.35, 0.706],
      [-24.406181234320236, 70.88329215802234, 4.44, 0.071],
      [68.79487162233592, 71.82945028973805, 4.59, 0.217],
      [67.44742215796617, 70.76260823335882, 0.03, 0.021],
      [66.85401176424224, 72.61716358105106, 4.34, -0.63],
      [63.187561246872484, 75.21642305187062, 3.52, 0.217],
      [66.92565791249359, 74.67754965457551, 4.22, 1.677],
      [63.31831831295308, 77.18838162431676, 3.25, -0.005],
      [-77.22670577265096, 124.20762628787728, 5.3, 0.82],
      [-72.8855942325529, 123.55040321267747, 5.47, 1.189],
      [-72.07702859471821, 120.96978972978461, 5.18, 1.086],
      [9.880395722485613, 128.26354143880832, 4.89, 0.82],
      [-74.24302281217471, 118.80177010853214, 5.08, 0.706],
      [12.342860698727176, 130.34182883289256, 4.67, 0.82],
      [13.20201110094703, 133.80550049649017, 4.71, 0.021],
      [1.186944965743062, 134.95041087159063, 4.8, 0.071],
      [24.2967074231241, 90.75077104093563, 4.47, 0.021],
      [25.672869624843422, 94.0299631370582, 6.72, 0.396],
      [30.37731154774974, 89.6952829985681, 4.48, 0.902],
      [35.480515277193, 85.69892525194507, 5.44, 0.317],
      [47.18611729184793, 83.47754599577762, 3.94, 0.902],
      [44.72209960150758, 74.34384292418105, 4.36, 0.603],
      [36.66122924275032, 98.21369195449314, 3.76, -0.167],
      [34.40450744685278, 100.97865030469633, 3.99, 1.038],
      [-56.2021543371521, 98.69515774969871, 3.61, 0.991],
      [-58.344435243889215, 96.29902683372576, 2.69, -0.196],
      [-60.24855908439851, 95.29817637778041, 4.06, 1.748],
      [-63.516313467494186, 94.68467162028035, 3.63, 0.192],
      [-58.54132656971789, 99.31540845518526, 3.84, -0.11],
      [-57.55104302561866, 95.24115172985354, 3.04, -0.196],
      [-24.00036675642805, 89.01981484109537, 4.46, -0.138],
      [-26.698434884216052, 89.99003374744893, 4.01, 0.82],
      [-28.033761347331843, 87.47929804620762, 4.65, 0.82],
      [-54.32207801910236, 111.31164318082737, 4.31, 0.991],
      [-51.64833663286445, 124.38423004868153, 4.13, 0.241],
      [39.61824642329523, 96.13082426449016, 3.36, 0.266],
      [0.4644598575595994, 83.44751021793955, 3.27, -0.196],
      [-45.71070614604352, 125.18919068460029, 3.73, 0.902],
      [1.708494248566175, 83.81359245607872, 4.16, 0.095],
      [3.5899755437579213, 81.08719192434926, 4.39, 0.317],
      [6.721178859500626, 75.99203755372724, 2.43, 0.083],
      [6.281099744214072, 66.41215266889522, 2.54, -0.273],
      [8.565673686168964, 59.18991690512134, 3.23, 0.82],
      [8.843332855059918, 57.80315476638957, 2.73, 1.478],
      [17.122917893123383, 58.15502075363862, 3.82, 0.071],
      [28.365428440839327, 60.495815908742415, 3.19, 0.991],
      [35.89423157770061, 67.43125768546561, 2.08, 0.144],
      [29.213038788980377, 72.80878547638893, 2.76, 0.991],
      [-25.3555144936273, 101.4784569091051, 3.31, -0.226],
      [-27.199054446426903, 98.20476037173019, 3.12, 1.137],
      [15.065783885110719, 20.888926360765137, -0.05, 0.991],
      [47.22734047035446, 98.88725291725963, -1.44, 0.021],
      [28.025224815496095, 57.10082565546446, 3.94, 0.902],
      [59.40706247190635, 97.15189690075465, 4.01, -0.196],
      [58.417316390958284, 98.26633078512782, 1.83, 0.48],
      [29.14960731886533, 116.36982389588538, 3.05, 0.144],
      [37.601180577222785, 136.01205909042028, 2.85, 0.144],
      [-49.808382706479144, 81.27889963888857, 2.29, -0.226],
      [-45.586438632685145, 70.1141006752371, 3.41, -0.196],
      [-76.93762739622458, 88.33466265542842, 3.39, 0.946],
      [-79.00161044214529, 80.82791028131557, 2.45, 0.192],
      [61.342591137720376, 117.0573278326991, 3.12, 0.968],
      [-87.93146625623784, 47.49318299959113, 3.56, 0.902],
      [-84.59338454340211, 49.483648015748045, 4.06, 0.241],
      [78.14851880044684, 88.13280407718472, 2.23, 0.48],
      [-88.26650672586833, 122.77431592645041, 3.76, 0.423],
      [9.726174136411535, 85.83061135967942, 2.87, 1.609],
      [16.77345224831125, 85.5471749327975, 1.93, 0.021],
      [-13.732751624239029, 147.9536307659586, 2.07, 1.748],
      [60.6607053801037, 55.65766754893682, 3.16, 1.038],
      [62.281399041052204, 49.09632202161713, 3.48, 0.82],
      [52.659762488312225, 49.71201668506876, 2.81, 0.509],
      [52.85352288546686, 53.824497805117495, 3.92, 0.021],
      [39.00784184294088, 49.78714215025851, 2.78, 0.82],
      [40.94696325224292, 115.1411026821093, 2.58, 0.266],
      [36.55037899555079, 35.34803451926132, 2.01, 0.902],
      [-16.314353844271864, 133.31947677935673, 4.39, 0.144],
      [43.560889482951026, 117.20101337220532, 2.81, 0.706],
      [-7.978006889652534, 50.76582972247457, 2.61, -0.03],
      [-22.777717942615745, 61.3822173073297, 3.25, 1.609],
      [-26.80614169262373, 78.10848724424723, 2.8, -0.196],
      [-28.701882953731506, 76.29108668783505, 6.21, 0.046],
      [35.480515277193, 85.69892525194507, 5.44, 0.317],
      [-58.344435243889215, 96.29902683372576, 2.69, -0.196],
      [29.213038788980377, 72.80878547638893, 2.76, 0.991]]
  end
end
