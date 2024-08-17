class NewsData {
  String? title;
  String? content;
  String? image;

  NewsData(
    this.title,
    this.content,
    this.image,
  );

  static List<NewsData> doctorNewsData = [
    NewsData(
      "Je, unapiga mswaki vya kutosha?",
      "Mswaki ni kifaa muhimu katika kudumisha afya ya kinywa. Hivyo, ni muhimu kuhakikisha kuwa unatumia mswaki vizuri mara mbili kwa siku. Kumbuka pia kubadilisha mswaki wako kila baada ya miezi mitatu.",
      "news1.png",
    ),
    NewsData(
      "Zuia Kunywa Dawa Ovyo",
      "Kunywa dawa kwa usahihi ni muhimu kwa matibabu bora. Kunywa dawa kama ilivyoelekezwa na daktari wako ili kuhakikisha kuwa unapata matokeo bora. Kunywa dawa ovyo kunaweza kupunguza ufanisi wa matibabu.",
      "news4.png",
    ),
    NewsData(
      "Madhara ya Dawa Tatu",
      "Matumizi ya dawa nyingi kwa wakati mmoja yanaweza kusababisha madhara kama vile mhemko wa tumbo, kichefuchefu, au kuongezeka kwa athari za upande. Ni muhimu kufuata maagizo ya daktari kuhusu matumizi ya dawa.",
      "news3.png",
    ),
    NewsData(
      "Ushauri wa Dozi",
      "Dozi sahihi ya dawa ni muhimu kwa ufanisi wa matibabu. Hakikisha kuwa unafuata maelekezo ya daktari kuhusu dozi na muda wa kuchukua dawa ili kuhakikisha matokeo bora na kuepuka athari zisizohitajika.",
      "news2.png",
    ),
  ];
}
