# gradientdescent
Machine Learning Gradient Descent Algorithm implementing in Octave

Amaç:Hipotezi iyileştimek için kullanılması daha iyi olan teta değerini bularak en düşük maliyeti (hata miktarının) hesaplamak.

1.)Verilere uygun fonksiyona karar verilir.(h= hipotez function)
2.)Fonksiyonda yer alan parametreler için (a,b) bir teta vektörü oluşturulur.
3.)Gradient descentte(dereceli azaltma) amaç bu teta vektörlerini en uygun hale getirmektir.
4.)Teta vektörü için başlangıç değeri atanır.(Ben başta "0" atadım ama herhangi bir değer atanabilir.)
5.)Teta değerleri için hataya bağlı maliyet fonksiyonu "J" (cost function) hesaplanır.
6.)Bu değer her adımda hesaplanır ve minimum değere indirgenmeye çalışılır. 
7.)Algoritma "gradient descent" yani "dereceli azaltma" adını bu iterative indirgemeden alır.
8.)Maliyet fonksiyonunun hesaplanmasında Squared Error kullandım.
9.)Yeni teta değerleri hesaplanır.(Bu aşamada algoritmanın arkasında türev alma işlemleri uygulanır)
10.)5. adım yeniden uygulanır. "J" maliyet fonksiyonu azalmaya başlarsa iterasyon sonlandırılır.
