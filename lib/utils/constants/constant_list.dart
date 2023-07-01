List<Map<String, String>> navbarItems = [
  {
    'icon_select': 'assets/images/home_icon_active.png',
    'icon_deselect': 'assets/images/home_icon_deselect.png',
    'text': 'Home'
  },
  {
    'icon_select': 'assets/images/kelas_saya_icon.png',
    'icon_deselect': 'assets/images/kelas_saya_icon.png',
    'text': 'Kelas Saya'
  },
  {
    'icon_select': 'assets/images/profile_icon_active.png',
    'icon_deselect': 'assets/images/profile_icon_deselect.png',
    'text': 'Profile'
  },
];

List<String> notificationStatus = [
  'Semua',
  'Menunggu',
  'Berhasil',
  // 'Gagal'
]; //'Di

const List<Map<String, String>> cardBase = [
  {
    'title': 'Mengelola Utang untuk Mengendalikan Bisnis',
    'subtitle': 'cardbase_bisnis',
    'image': 'assets/images/cardbase_bisnis.png',
    'image_long': 'assets/images/cardbase_bisnis_long.png',
    'link': 'https://learnlab.typeform.com/to/DgIinGXb',
  },
  {
    'title': 'Memahami Risiko Keselamatan dan Kesehatan Kerja di Perkantoran',
    'subtitle': 'cardbase_k3',
    'image': 'assets/images/cardbase_k3.png',
    'image_long': 'assets/images/cardbase_k3_long.png',
    'link': 'https://learnlab.typeform.com/to/PYSSJpD3',
  },
  {
    'title': 'Mengenal AutoCAD untuk Pemula',
    'subtitle': 'cardbase_autocad',
    'image': 'assets/images/cardbase_autocad.png',
    'image_long': 'assets/images/cardbase_autocad_long.png',
    'link': 'https://learnlab.typeform.com/to/FyW1A3Rl',
  },
];

const List<String> assetImageForPrakerja = [
  'assets/images/validate-kupon.jpg',
  'assets/images/panduan-prakerja.jpg',
  'assets/images/lacak-sertifikat.png'
];

const List<Map<String, String>> splashTour = [
  {
    'title': 'Lembaga Kursus Resmi',
    'subtitle':
        'Tersedia pilihan kursus yang luas dari beragam kategori yang diajarkan oleh berbagai lembaga kursus untuk meningkatkan keahlian dan karier anda.',
    'image': 'assets/images/auth-0.png',
  },
  {
    'title': 'Belajar Full Online',
    'subtitle':
        'Semua kursus tersedia dan dibawakan secara online lewat recorded video. Anda bebas belajar kapan saja dan dimana saja melalui mobile app atau web.',
    'image': 'assets/images/auth-1.png',
  },
  {
    'title': 'Sertifikat Cetak',
    'subtitle':
        'Berbagai kursus yang menawarkan sertifikat kelulusan atas nama anda yang dicetak hard copy dan dikirim langsung ke alamat anda.',
    'image': 'assets/images/auth-2.png'
  }
];

const List<Map<String, dynamic>> categories = [
  {
    'id': 2778,
    'name': 'Job Ready Course',
    'icon': 'assets/images/job_ready_course.png'
  },
  {'id': 562, 'name': 'Bisnis', 'icon': 'assets/images/cat_bisnis.png'},
  {'id': 1731, 'name': 'Keuangan', 'icon': 'assets/images/cat_keuangan.png'},
  {
    'id': 1733,
    'name': 'Pengembangan Karir',
    'icon': 'assets/images/cat_pengembangan.png'
  },
  {
    'id': 715,
    'name': 'Sertifikasi',
    'icon': 'assets/images/cat_sertifikasi.png'
  },
  {'id': 213, 'name': 'Teknologi', 'icon': 'assets/images/cat_teknologi.png'},
  {'id': 1744, 'name': 'Hobi', 'icon': 'assets/images/cat_hobby.png'},
  {'id': 399, 'name': 'Bahasa', 'icon': 'assets/images/cat_bahasa.png'},
];

const List<String> jsonForTour = [
  'assets/images/tour-zero.json',
  'assets/images/tour-first.json',
  'assets/images/tour-second.json',
  'assets/images/tour-third.json',
];

const List<String> titleForTour = [
  'Fitur baru di Arkademi!',
  'Menonton video tanpa paket data',
  'Penyimpanan Offline berhasil',
  'Mulai menonton tanpa paket data'
];

const List<String> subtitleForTour = [
  'Fitur Tonton Offline dapat anda gunakan untuk mengunduh video dan dapat anda tonton tanpa paket data.',
  'Tekan tombol "Tonton Offline" untuk mengunduh video seri pembelajaran yang Anda inginkan',
  'Setelah 100%, video akan selesai tersimpan',
  'Sekarang Anda bisa menikmati video belajar tanpa menggunakan paket data Anda lagi!',
];

//EXPLORE PAGE PRAKERJA
List<Map<String, String>> miniGuidePrakerja = [
  {
    'maintitle': 'Beli Kupon',
    'title':
        'Beli kupon pelatihan Prakerja\nArkademi di digital platform/\nmarketplace Prakerja:',
    'subtitle': 'Tokopedia, Bukalapak,\nSekolahmu,\nMauBelajarApa, Pintaria.'
  },
  {
    'maintitle': 'Buat Akun',
    'title':
        'Buat akun di Arkademi.\nPastikan anda mengisi\nnama dengan benar\ndan lengkap untuk tampil\ndi sertifikat elektronik.',
    'subtitle': 'Daftar'
  },
  {
    'maintitle': 'Gunakan Kupon',
    'title':
        'Validasi dan gunakan kupon\npelatihan Prakerja yang sudah anda\ndapatkan dapatkan dari marketplace untuk\nmasuk ke dalam pelatihan.',
    'subtitle': 'Pakai Kupon'
  },
  {
    'maintitle': 'Mulai Belajar',
    'title':
        'Masuk dan mulailah belajar\ndi dalam kelas. Pelatihan diselenggarakan\nfull online dan sudah tersedia.\nAnda bisa belajar kapan\naja dimana saja.',
    'subtitle': ''
  },
  {
    'maintitle': 'Selesaikan Pelatihan',
    'title':
        'Ikuti dan selesaikan pelatihan online\nsecara tuntas dengan menyelesaikan semua\nseri ajar, pre-test, dan post-test.',
    'subtitle': ''
  },
  {
    'maintitle': 'Dapat Sertifikat',
    'title':
        'Dapatkan sertifikat elektronik\nusai lulus pelatihan. Arkademi akan melaporkan\nsertifikat anda ke PMO\nPrakerja max 2 hari kerja.',
    'subtitle': ''
  },
];

List listTestimony = [
  {
    'text':
        'Kursus online di Arkademi sangat berkesan, materinya simple tidak berbelit-belit. Mudah dicerna bagi para pemula seperti saya. Apalagi dengan sertifikat yang diberi setelah lulus dalam kuis. Sukses terus buat Arkademi!',
    'img':
        'https://cdn.arkademi.com/asset/img/20191129112147/5-Nizar-Putra.png',
    'name': 'NIZAR PUTRA (BANDUNG)',
    'kelas': 'Siswa kelas Bootstrap',
  },
  {
    'text':
        'Materi kursus online di Arkademi sangat menarik, isinya daging semua dan layak dipelajari. Pematerinya juga berkompeten di bidangnya. Ditambah penyajian kelas sangat ciamik dan user friendly. Solusi buat pebisnis.',
    'img': 'https://cdn.arkademi.com/asset/img/20191129112147/6-Fuad-Hasan.png',
    'name': 'FUAD HASAN (CILEGON)',
    'kelas': 'Siswa kelas Inbound Marketing',
  },
  {
    'text':
        'Saya beruntung bergabung ke kursus online di Arkademi. Metode penyampaian sangat jelas singkat dan memudahkan belajar. Ditambah lagi tampilan presentasi yang membuat kita tidak jenuh dalam belajar online.',
    'img':
        'https://cdn.arkademi.com/asset/img/20191129105102/1-Dewi-Wijayanti.png',
    'name': 'DEWI WIJAYANTI (JAKARTA)',
    'kelas': 'Siswa kelas Brevet Pajak A/B',
  },
];

List<String> listSK = [
  'Diskon',
  'Hanya berlaku untuk pelatihan yang terdaftar',
  'Berlaku untuk semua metode pembayaran',
  'Kupon dapat digunakan berulang',
  'Arkademi dapat menghentikan promo sewaktu-waktu tanpa pemberitahuan',
  'Arkademi berhak melakukan tindakan yang diperlukan apabila diduga terjadi tindak kecurangan dari pengguna yang merugikan pihak Arkademi',
  'Dengan menggunakan kupon ini, pengguna dianggap mengerti dan menyetujui semua syarat dan ketentuan yang berlaku',
  'Promo dapat terhenti sewaktu-waktu tanpa pemberitahuan',
  'Informasi lebih lanjut hubungi',
];

List<String> listPenggunaanCourse = [
  'Tekan “Kupon” pada homepage Aplikasi Arkademi di sebelah kiri atas',
  'Tekan “Pakai” pada kupon diskon yang telah Anda pilih',
  'Lalu Anda akan dialihkan ke halaman pelatihan tersebut',
  'Tekan “ikuti Kursus” lalu Anda menuju ke halaman Checkout',
  'Maka kupon otomatis terpasang',
  'Pastikan harga pelatihan sudah terpotong dan lakukan pembayaran',
];
List<String> notifList = [
  'assets/images/notif_1.png',
  'assets/images/notif_2.png',
  'assets/images/notif_3.png',
  'assets/images/notif_4.png',
  'assets/images/notif_5.png',
  'assets/images/notif_6.png',
];

Map<String, String> iapTier = {
  '16000': 'PD001',
  '35000': 'PD002',
  '49000': 'PD003',
  '65000': 'PD004',
  '79000': 'PD005',
  '99000': 'PD006',
  '109000': 'PD007',
  '129000': 'PD008',
  '149000': 'PD009',
  '159000': 'PD010',
  '179000': 'PD011',
  '199000': 'PD012',
  '209000': 'PD013',
  '229000': 'PD014',
  '249000': 'PD015',
  '259000': 'PD016',
  '279000': 'PD017',
  '299000': 'PD018',
  '309000': 'PD019',
  '329000': 'PD020',
  '349000': 'PD021',
  '359000': 'PD022',
  '369000': 'PD023',
  '379000': 'PD024',
  '399000': 'PD025',
  '429000': 'PD026',
  '449000': 'PD027',
  '459000': 'PD028',
  '469000': 'PD029',
  '479000': 'PD030',
  '499000': 'PD031',
  '519000': 'PD032',
  '529000': 'PD033',
  '549000': 'PD034',
  '569000': 'PD035',
  '579000': 'PD036',
  '599000': 'PD037',
  '619000': 'PD038',
  '629000': 'PD039',
  '649000': 'PD040',
  '669000': 'PD041',
  '679000': 'PD042',
  '699000': 'PD043',
  '719000': 'PD044',
  '729000': 'PD045',
  '749000': 'PD046',
  '759000': 'PD047',
  '769000': 'PD048',
  '779000': 'PD049',
  '799000': 'PD050',
  '899000': 'PD051',
  '999000': 'PD052',
  '1099000': 'PD053',
  '1199000': 'PD054',
  '1249000': 'PD055',
  '1299000': 'PD056',
  '1399000': 'PD057',
  '1449000': 'PD058',
  '1499000': 'PD059',
  '1599000': 'PD060',
  '1799000': 'PD061',
  '1899000': 'PD062',
  '1999000': 'PD063',
  '2099000': 'PD064',
  '2299000': 'PD065',
  '2499000': 'PD066',
  '2599000': 'PD067',
  '2699000': 'PD068',
  '2799000': 'PD069',
  '2999000': 'PD070',
  '3099000': 'PD071',
  '3299000': 'PD072',
  '3499000': 'PD073',
  '3599000': 'PD074',
  '3699000': 'PD075',
};

List<String> listPenggunaanKuponPPPK = [
  'Tekan “Kupon” pada homepage Aplikasi Arkademi di sebelah kiri atas',
  'Tekan “Pakai” pada kupon diskon PPPK',
  'Lalu Anda akan dialihkan ke halaman pilihan Preparation Test PPPK',
  'Pilih salah satu Preparation Test PPPK yang ingin Anda beli lalu Anda menuju ke halaman Checkout',
  'Maka kupon otomatis terpasang',
  'Pastikan harga kelas sudah terpotong dan lakukan pembayaran',
];

List<String> listProfesi = [
  'Silahkan Pilih Profesi',
  'Karyawan Swasta',
  'PNS & BUMN',
  'Profesional',
  'Wiraswasta',
  'Pelajar/Mahasiswa',
  'Belum Bekerja',
  'Lainnya',
];
List<String> listPendidikan = [
  "Silahkan Pilih Pendidikan",
  "SD",
  "SMP",
  "SMA",
  "S1",
  "S2",
];

Map<String, dynamic> newKupon = {
  'listSK': [
    'Diskon',
    'Hanya berlaku untuk pelatihan yang terdaftar.',
    'Berlaku untuk semua metode pembayaran.',
    'Kupon dapat digunakan berulang.',
    'Arkademi dapat menghentikan promo sewaktu-waktu tanpa pemberitahuan.',
    'Arkademi berhak melakukan tindakan yang diperlukan apabila diduga terjadi tindak kecurangan dari pengguna yang merugikan pihak Arkademi.',
    '',
    'Dengan menggunakan kupon ini, pengguna dianggap mengerti dan menyetujui semua syarat dan ketentuan yang berlaku.',
    'Promo dapat terhenti sewaktu-waktu tanpa pemberitahuan.',
    'Informasi lebih lanjut hubungi',
  ],
  'caraPenggunaan': [
    'Masuk ke akun Arkademi untuk menggunakan kupon diskon.',
    'Klik “Salin” pada kursus yang kamu pilih. Lalu, kode kupon akan tersalin.',
    'Klik card kupon kursus pada halaman Kupon Diskon yang kamu pilih. Lalu, kamu akan dialihkan ke halaman kursus tersebut.',
    'Klik “Ikuti Kursus” lalu kamu akan menuju ke halaman checkout.',
    'Tempel kode kupon yang sudah disalin sebelumnya pada kolom “Punya Kupon?”.',
    'Tekan tombol “Pakai” maka kupon akan terpasang.',
    'Pastikan harga kursus sudah terpotong dan lakukan pembayaran.',
  ],
};
