class Haber {
  Haber(this.imageUrl, this.baslik, this.aciklama);

  String imageUrl;
  String baslik;
  String aciklama;
}

List haberList = [
  Haber(
    "https://scontent.cdninstagram.com/v/t51.2885-15/313551104_477995174144848_1282073804536158579_n.jpg?stp=dst-jpg_e15&_nc_ht=scontent.cdninstagram.com&_nc_cat=104&_nc_ohc=IVWSn5Am6YYAX9cqOKx&edm=APs17CUBAAAA&ccb=7-5&ig_cache_key=Mjk2MTk1OTc0MDQ5NDMwNDAyNw%3D%3D.2-ccb7-5&oh=00_AfA1V2RW1WCQMFvnQRUq4l96rg_2jGd_WtHLu-2fEZWvPg&oe=643529FE&_nc_sid=978cb9",
    "35.767 Başvuru Aldık",
    "Google Oyun ve Uygulama Akademisi 2.yılında 35.767 başvuru aldı! Oyun ve Uygulama Akademisi’ne olan ilginiz için çok teşekkür ederiz.",
  ),
  Haber(
    "https://scontent.cdninstagram.com/v/t51.2885-15/334183932_1278404979739858_177589311238080899_n.jpg?stp=dst-jpg_e35&_nc_ht=scontent.cdninstagram.com&_nc_cat=110&_nc_ohc=L_Qtq_CkDm0AX8saEhj&edm=APs17CUBAAAA&ccb=7-5&ig_cache_key=MzA1MzIxMjM3ODY4MTQ0Mzc1OA%3D%3D.2-ccb7-5&oh=00_AfDtyCgFbV8jtYI_H2-5YSvBxWWxxHSv4FnReIoMRmrhOg&oe=6434A85A&_nc_sid=978cb9",
    "Teşekkürler Akademi Topluluğu",
    "Depremlerin ilk gününden beri Akademi ailemizin parçası olan yaklaşık 3000 bursiyer ve mezunumuzun her birinin ve sevdiklerinin can güvenliğinden emin olmak, ihtiyaçlarını öğrenebilmek amacıyla iletişim kanalları oluşturduk. Her birine ulaşmaya çalıştık ve gereken destekleri sağladık.",
  ),
  Haber(
    "https://instagram.fsaw2-2.fna.fbcdn.net/v/t51.2885-15/313210004_458002826430307_6346588841392444224_n.jpg?stp=dst-jpg_e35&_nc_ht=instagram.fsaw2-2.fna.fbcdn.net&_nc_cat=107&_nc_ohc=8ugp-7SfGlwAX8I-dQ5&edm=ABmJApABAAAA&ccb=7-5&ig_cache_key=Mjk1ODk2NjA4NTgwMTUyNTkxMQ%3D%3D.2-ccb7-5&oh=00_AfDn-YcsFMqsQMWKBO-b7zS5g7zdizmmBz4ARFuyFDm-XA&oe=6434ADA7&_nc_sid=6136e7",
    "Başarılarımız",
    "Oyun ve Uygulama Akademisi’nin 2022 dönemi oyun ve uygulama kategorilerinde; oyun alanında birinci olan Artha Game Studious, uygulama alanında birinci olan ScrAppMine ve ve jüri özel ödülünün sahibi olan Paws Game takımlarını tebrik ederiz.",
  ),
  Haber(
    "https://scontent.cdninstagram.com/v/t51.2885-15/309767183_444525250993738_6475304187803620273_n.jpg?stp=dst-jpg_e35&_nc_ht=scontent.cdninstagram.com&_nc_cat=110&_nc_ohc=cQXYT0l5rywAX98Z3vQ&edm=APs17CUBAAAA&ccb=7-5&ig_cache_key=Mjk0MDkwODEwMjA5OTc4NTAwNQ%3D%3D.2-ccb7-5&oh=00_AfCpxTXP-gan6Acw-7u4CUflwWhhiycK9UcqO0LX4PEJKw&oe=6435CFFE&_nc_sid=978cb9",
    "Atıl Samancıoğlu ile Jam söyleşisi",
    "Oyun ve Uygulama Akademisi danışmanımız @atilsamancioglu ve bursiyerlerimiz ile Akademi'de Bootcamp, GameJam, AppJam, Github ve çok daha fazlasını konuşmak için instagram canlı yayınında bir araya geliyoruz!",
  ),
  /*
  Haber(
    "https://scontent.cdninstagram.com/v/t51.2885-15/299909867_1688021148234483_2814459059991618348_n.jpg?stp=dst-jpg_e35&_nc_ht=scontent.cdninstagram.com&_nc_cat=103&_nc_ohc=6bwolKeR5bQAX-TP-V_&edm=APs17CUBAAAA&ccb=7-5&ig_cache_key=MjkwODI5NzIwNDM4NTE0NjI4NQ%3D%3D.2-ccb7-5&oh=00_AfBYxjjSAh3TXDigjlrBIbRqOSc2zWl-iKhfLna7tYHi0Q&oe=6435DE73&_nc_sid=978cb9",
    "Neden Oyun ve Uygulama Akademisi?",
    "Oyun ve Uygulama Akademisi'nin ikinci yılı için başvuru süreci başladı! Google Türkiye, T.C. Sanayi ve Teknoloji Bakanlığı ve T.C. Cumhurbaşkanlığı Dijital Dönüşüm Ofisi destekleriyle Girişimcilik Vakfı ve T3 Girişim Merkezi iş birliğinde hayata geçirilen Oyun ve Uygulama Akademisi ile dijital ekonominin büyümesine, 18-29 yaş arası gençlerin dijital becerilerinin gelişmesine, teknoloji sektöründe istihdamın artmasına ve teknoloji odaklı girişimlerin çoğalmasına katkı sağlamayı hedefliyoruz. Oyun ve Uygulama Geliştirme Eğitimleri, Proje Yönetimi, Teknoloji Girişimciliği, Networking, Oyun Sanatı, Yazılımcılar için İngilizce, Sosyal Beceriler Eğitimleri, Kariyer Zirveleri, App&Game Jam'i ve Bootcamp gibi 450 saat eğitim ve etkinlikten oluşan 7 aylık program ile kariyerini teknoloji sektöründe tasarla. Başvurular başladı! ⏰Unutma son başvuru tarihi 16 Ekim!",
  ),*/
  Haber(
    "https://scontent.cdninstagram.com/v/t51.2885-15/299909867_1688021148234483_2814459059991618348_n.jpg?stp=dst-jpg_e35&_nc_ht=scontent.cdninstagram.com&_nc_cat=103&_nc_ohc=6bwolKeR5bQAX-TP-V_&edm=APs17CUBAAAA&ccb=7-5&ig_cache_key=MjkwODI5NzIwNDM4NTE0NjI4NQ%3D%3D.2-ccb7-5&oh=00_AfBYxjjSAh3TXDigjlrBIbRqOSc2zWl-iKhfLna7tYHi0Q&oe=6435DE73&_nc_sid=978cb9",
    "Eğitmenlerimize Teşekkürler",
    "Bu yıl 2000 bursiyerimize eğitim veren, değerli katkılarıyla Oyun ve Uygulama Akademisi’nde yer alan sevgili eğitmenlerimize çok teşekkürler!",
  ),
  Haber(
    "https://instagram.fesb10-3.fna.fbcdn.net/v/t51.2885-15/295622655_461315688806534_134010764033790684_n.jpg?stp=dst-jpg_e35_p1080x1080&_nc_ht=instagram.fesb10-3.fna.fbcdn.net&_nc_cat=102&_nc_ohc=Qn8BUANua7YAX_o7q-z&edm=ALQROFkBAAAA&ccb=7-5&ig_cache_key=Mjg5MDk0ODc3MjAyODgxNjcyMQ%3D%3D.2-ccb7-5&oh=00_AfDXXVWqO8mYaGWHprmG_bOtKAj0UmONApreTDkgeWtHqQ&oe=6436ED94&_nc_sid=30a2ef 1080w",
    "Bootcamp Ödülleri Sahipleri ile Buluştu.",
    '''Oyun ve Uygulama Akademisi’nin sonunda düzenlenen Bootcamp ile bursiyerlerimiz oyun ve uygulamalar geliştirdiler. Sürecin sonunda jüri oylarıyla seçilen 3 proje San Francisco Ekosistem Gezisi ödülü ile birlikte @t3girisim ve @girisimcilikvakfi tarafından sunulan çeşitli desteklerinin sahibi oldular.

      Akademi ile birlikte oyun ve uygulama geliştiren tüm takımları kutluyor ve herkese hayat boyu başarılar diliyoruz!

  🏆The Light of the Forest, ışığını kaybetmiş ormanına gücünü geri kazandırmak üzere yola çıkan bir karakterin yolculuğunu anlatan yapboz/macera türünde bir oyun.

  🏆Scrap App, daire sakinleri tarafından biriktirilmiş apartman ve sitelere ait kıymetli geri dönüşüm atıklarının depolandığı kutuların doluluk oranlarının, geri dönüştürülebilir atık toplayıcısı firmalar tarafından takip edilmesini/toplanmasını kolaylaştıran ve apartman-site yönetimlerinin bir gelir kalemi olarak geri dönüşüm ödemesi almalarını sağlayan bir mobil uygulama.

  🏆Chips Adventure, oyuncuya üç boyutlu aksiyon-Macera deneyimi sunan bir oyun. .Annesiyle ülkenin en güzel cipslerini yapan Mick, büyük bir şirket olan Chips Factory’nin radarına takılır. Oyun boyunca Mick, annesini kurtarmaya çalışır.''',
  ),
  Haber(
    "https://instagram.fesb10-4.fna.fbcdn.net/v/t51.2885-15/289812478_1198017394099290_3698906927519006746_n.jpg?stp=dst-jpg_e35&_nc_ht=instagram.fesb10-4.fna.fbcdn.net&_nc_cat=106&_nc_ohc=RyQJ-ZnEovsAX-l3EGd&edm=ALQROFkBAAAA&ccb=7-5&ig_cache_key=Mjg2ODk3NDM1NTg4OTU3NjQxNA%3D%3D.2-ccb7-5&oh=00_AfAytiT_ugQGO9DQpIfPxPEqWl4dl5T_GurE4gI0PWmmWg&oe=6436C34F&_nc_sid=30a2ef",
    "Bootcamp Finalistleri Belli Oldu",
    "Oyun ve Uygulama Akademisi Mezuniyet Bootcamp’inde finalistler belli oldu. 7 takım Flutter ile uygulama geliştirme, 7 takım ise Unity ile oyun geliştirme alanında hazırladıkları projelerini 27 Haziran Pazartesi günü jüriye sunacaklar. Tüm finalistlerimize başarılar diliyoruz💫",

  ),
  Haber(
    "https://instagram.fesb10-5.fna.fbcdn.net/v/t51.2885-15/278342419_551647156316084_4775598925158825096_n.jpg?stp=dst-jpg_e35&_nc_ht=instagram.fesb10-5.fna.fbcdn.net&_nc_cat=108&_nc_ohc=Y231JCCVKaYAX_paE6Q&edm=ALQROFkBAAAA&ccb=7-5&ig_cache_key=MjgxNTQxOTI5ODU3MTQxNzA2Mw%3D%3D.2-ccb7-5&oh=00_AfDOyVdSffic20atWpCddUFRn0n6yvNsnljeW3nVw-QTog&oe=6435D69B&_nc_sid=30a2ef",
    "Veri Güvenliği Ideathonu",
    '''Oyun ve Uygulama Akademisi’nde ikincisini gerçekleştirdiğimiz ideathon için 3 Nisan'da @gooinnovation ekibi ve Verilogy - Humanizing Privacy kurucusu @mertcanbo ile bir araya geldik.
      Akademi bursiyerlerimiz, takımlar halinde "Veri Güvenliği" üzerine projeler geliştirdi. Birbirinden güzel fikirlerin paylaşıldığı etkinlikte Akademi bursiyerlerinin ve jürinin puanlarıyla en çok beğenilen ilk 3 proje belli oldu.

  Tüm katılımcılara ve kazanan arkadaşlarımıza emekleri için teşekkür ediyoruz.''',
  ),
  Haber(
    "https://instagram.fesb10-3.fna.fbcdn.net/v/t51.2885-15/277121273_1513013979100561_517387914148594789_n.jpg?stp=dst-jpg_e35&_nc_ht=instagram.fesb10-3.fna.fbcdn.net&_nc_cat=101&_nc_ohc=c4fPDbnifI8AX_PVAZx&edm=ALQROFkBAAAA&ccb=7-5&ig_cache_key=MjgwMTc3NTAzMjY0MTU2NzM5MQ%3D%3D.2-ccb7-5&oh=00_AfCNV8OPyYiSOjB0LqMe2nH7HmhPDc0TgJRo4DQOaLrt8g&oe=6435A260&_nc_sid=30a2ef",
    "Akademi Bursiyerlerinin Başarısı",
    "Akademi'de tanışan Emre, Selin, Berkay ve Sezgi kurdukları Doppelgangers oyunu ile MağaraJam #4 'de ikinci olduktan sonra, IZTECH HyperJam 22 'de de oyunları Escaping Slime ile birinci oldular. Bursiyerimiz Ahmet Anter Yağız ise Mr. Jones: Craft Master oyunu ile HyperJam 22'de ikinci oldu. Bursiyerlerimizi tebrik ediyor, başarılarının devamını diliyoruz!",
  ),
  Haber(
    "https://instagram.fesb10-4.fna.fbcdn.net/v/t51.2885-15/275310491_5836599913020859_885747431006591628_n.jpg?stp=dst-jpg_e35&_nc_ht=instagram.fesb10-4.fna.fbcdn.net&_nc_cat=107&_nc_ohc=H7m95XJE6QMAX-CXSCz&edm=ALQROFkBAAAA&ccb=7-5&ig_cache_key=Mjc4OTM1NDgwNzYwMjM0NjI0MQ%3D%3D.2-ccb7-5&oh=00_AfB01Dy5EDuV4q46raiLlLJr5PCqvDls3LDHKuwrOWPfvg&oe=64355510&_nc_sid=30a2ef",
    "Akademi Kadın Yazılımcıların Yanında",
    "Oyun ve Uygulama Akademisi bursiyerlerinin %50'sini oluşturan kadınların teknoloji sektörüne ilgi duyan nice kadınlara ilham olmasını ümit ediyor, Türkiye'de kadın geliştirici ve girişimci sayısının artmasını destekliyoruz.",
  ),
];

class Duyuru {
  Duyuru(this.baslik);

  String baslik;
}

List<Duyuru> duyuruList = [
  Duyuru(
    "Mart ayı görevlerinizi tamamlamanız için 6 Nisan’a kadar ek süre veriyoruz."
  ),
  Duyuru(
      "App & Game Jam Başvuruları Başladı."
  ),
  Duyuru(
      "BUGÜN 21.00'da Girişimciler için Finans Soru Cevap Buluşmamız var"
  ),
  Duyuru(
      "BU AKŞAM 21.00'da eğitmenimiz Seçkin Esen ile Yazılımcılar için İngilizce Canlı Yayınımız var"
  ),
  Duyuru(
      "App & Game Jam'e Katılım Zorunluluğunu Kaldırdık."
  ),
  Duyuru(
      "BUGÜN 20.00'da Unity Soru - Cevap Etkinliğimiz Var."
  ),
  Duyuru(
      "BUGÜN 20.00'da Flutter Soru - Cevap Etkinliğimiz Var."
  ),
  Duyuru(
      "Akademide Hediyeleşme Zamanı: Hediye Formu"
  ),
  Duyuru(
      "Akademi Takvimi ve Görevleri Güncellendi. "
  ),
  Duyuru(
      "Ideathon Başvuruları Başladı."
  ),

];
