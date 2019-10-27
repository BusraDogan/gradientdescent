x = [1 0; 1 1; 1 2; 1 3; 1 4 ;1 5]; % x veri giriş degerleri - x theta ile carpılacagı icin 1lerden olusan sabit bir x=1 matris olusturulur
y = [0;2;4;6;8;10]; %y cıkış değerleri

alfa =0.01;
Iter_num=1000;
MinDesAmount=0.000000;
m= length(x); % m giriş değerlerinin sayısı
theta = [0;0]; % thetanın başlangıc değerleri 

J= (1/(2*m))*sum((x*theta-y).^2); % cost function'ın hesaplanması 
error = (x*theta-y); % giriş değerlerinin theta ile çarpılıp olması gereken değerin bu değerden cıkarılmasıyla elde edilen ark hata oranıdır
new_theta(1,1)=theta(1)-(alfa/m)*sum(error); %  theta'nın 1.satır değerinin değişme formülü
new_theta(2,1)=theta(2)-(alfa/m)*(x(:,2)'*error); % theta'nın 2.satır değerinin değişme formülü
theta=new_theta; % thetaların aynı anda değişmesi gerektiği icin gecici değişkene atarız 

JandTheta = [J theta(1) theta(2)]; %değişkenleri matris olarak kaydedelim
printf  ('İlk iterasyon değerleri = J=%f theta0=%f theta1 =%f \n',  J, theta(1,1),theta(2,1))  %ilk iterasyon burada gerekleşmekte


for i=2:Iter_num  %ilk satır yukarıda yazıldı i=2 den başladık o yuzden
  
  %yeniden iterasyon yapmaya başlıyoruz
  J= (1/(2*m))*sum((x*theta-y).^2); % cost function'ın hesaplanması 
  error = (x*theta-y); % giriş değerlerinin theta ile çarpılıp olmas gereken değerin bu değerden cıkarılmasıyla elde edilen ark hata oranıdır
  new_theta(1,1)=theta(1)-(alfa/m)*sum(error); %  theta'nın 1.satır değerinin değişme formülü
  new_theta(2,1)=theta(2)-(alfa/m)*(x(:,2)'*error); % theta'nın 2.satır değerinin değişme formülü
  theta=new_theta; % thetaların aynı anda değişmesi gerektiği icin gecici değişkene atarız 

  %değişkenleri matriste gösteriyoruz
  JandTheta(i,1)=J; 
  JandTheta(i,2)=theta(1);
  JandTheta(i,3)=theta(2);
  
  
  %tüm iterasyonların yazdırılması için
  printf  ('Tüm iterasyon değerleri = J=%f theta0=%f theta1 =%f \n',  J, theta(1,1),theta(2,1));
  
  %Her iterasyon sonucunda azalma miktarının kaç oldugunu hesapla- Maliyet fonk.un en son değeri bir önceki değeri arasındaki fark
  
  descent_amount=JandTheta(i-1,1)-JandTheta(i,1); % jvetheta'da 1.sütunun i-1 ve i. degerleri arasında fark
  approach=false;
  
  if(descent_amount<MinDesAmount);
   disp ('En düşük azalma miktarına ulaşıldı , iterasyon sona erdiriliyor')
   printf ('İşlem %d kadar iterasyon işlemi ile  bitmiştir', i)
   printf ('Sonucta bulunan hipotez fonksiyonu ise  =  h(theta) = %f + %f x dir \n)' ,theta(1) , theta(2))
   approach = true;
   break
  endif
endfor

if (approach == false)
  disp('En son iterasyon gerçekleşti, iterasyon sona erdiriliyor')
  printf ('İşlem %d kadar iterasyon işlemi ile  bitmiştir ', i)
  printf ('Sonucta bulunan hipotez fonksiyonu ise  =  h(theta) = %f + %f x dir \n)' ,theta(1) , theta(2))
endif

%iterasyon sayısına baglı olarak ,Cost function grafiği cizdirelim 

subplot(2,2,2); plot (JandTheta(:,1)); 
title("J cost function, iterasyon sayısına göre")
xlabel("İterasyon Sayısı")
ylabel("J cost function değeri")











