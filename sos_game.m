%             ************* GÖRÜNTÜ İŞLEME İLE S-O-S OYUNU TASARIMI ****************

% KONYA TEKNİK ÜNİVERSİTESİ MÜHENDİSLİK VE DOĞA BİLİMLERİ FAKÜLTESİ ELEKTRİK ELEKTRONİK MÜHENDİSLİĞİ BÖLÜMÜ SAYISIAL GÖRÜNTÜ İŞLEME DERSİ
% 2019
% Projede Çalışanlar : Levent VATAN  ------------ 161222009
%                      İsmail DERELİ ------------ 161222013
%                      Selim Seyfullah SANLAV --- 161222015

% Projenin Amacı : Sisteme verilen çözümlenmemiş S-O-S tablosunu çözümleyerek kullanıcıya göstermek.
                                                                           % ********* !!!! ÖNEMLİ !!!! *********
table=im2double(rgb2gray((imread('tablo6.png'))));                         % Tablo eklendi. YENİ BİR TABLO EKLEMEK İÇİN PROJE KLASÖRÜNDEKİ BOŞ ŞABLONU DÜZENLEDİKTEN SONRA KAYDEDİP BURAYA EKLEMEK GEREKMEKTEDİR.
load('coordinates2.mat');                                                  % Tabloyu 25 parçaya bölmek için 25 adet koordinat verisi çekildi.

i1=imresize(imcrop(table,rect1),[93 93]);                                  % 25 tane resim çıkarılıyor. Hepsi 1 kareyi temsil ediyor.
i2=imresize(imcrop(table,rect2),[93 93]);                    
i3=imresize(imcrop(table,rect3),[93 93]);
i4=imresize(imcrop(table,rect4),[93 93]);
i5=imresize(imcrop(table,rect5),[93 93]);
i6=imresize(imcrop(table,rect6),[93 93]);
i7=imresize(imcrop(table,rect7),[93 93]);
i8=imresize(imcrop(table,rect8),[93 93]);
i9=imresize(imcrop(table,rect9),[93 93]);
i10=imresize(imcrop(table,rect10),[93 93]);
i11=imresize(imcrop(table,rect11),[93 93]);
i12=imresize(imcrop(table,rect12),[93 93]);
i13=imresize(imcrop(table,rect13),[93 93]);
i14=imresize(imcrop(table,rect14),[93 93]);
i15=imresize(imcrop(table,rect15),[93 93]);
i16=imresize(imcrop(table,rect16),[93 93]);
i17=imresize(imcrop(table,rect17),[93 93]);
i18=imresize(imcrop(table,rect18),[93 93]);
i19=imresize(imcrop(table,rect19),[93 93]);
i20=imresize(imcrop(table,rect20),[93 93]);
i21=imresize(imcrop(table,rect21),[93 93]);
i22=imresize(imcrop(table,rect22),[93 93]);
i23=imresize(imcrop(table,rect23),[93 93]);
i24=imresize(imcrop(table,rect24),[93 93]);
i25=imresize(imcrop(table,rect25),[93 93]);                                % 25 adet resim çıkarıldı.

i1_ters=imcomplement(i1);                                                  % Karakter tanımlama algoritmasında kullanmak için bu 25 karenin görüntüsü terslenip kaydedildi.
i2_ters=imcomplement(i2);
i3_ters=imcomplement(i3);
i4_ters=imcomplement(i4);
i5_ters=imcomplement(i5);
i6_ters=imcomplement(i6);
i7_ters=imcomplement(i7);
i8_ters=imcomplement(i8);
i9_ters=imcomplement(i9);
i10_ters=imcomplement(i10);
i11_ters=imcomplement(i11);
i12_ters=imcomplement(i12);
i13_ters=imcomplement(i13);
i14_ters=imcomplement(i14);
i15_ters=imcomplement(i15);
i16_ters=imcomplement(i16);
i17_ters=imcomplement(i17);
i18_ters=imcomplement(i18);
i19_ters=imcomplement(i19);
i20_ters=imcomplement(i20);
i21_ters=imcomplement(i21);
i22_ters=imcomplement(i22);
i23_ters=imcomplement(i23);
i24_ters=imcomplement(i24);
i25_ters=imcomplement(i25);                                                

%***************************************KARAKTER TESPİT ALGORİTMASI******************************************

% ******* Boş Karakter Bulma *********
squareIsEmpty=zeros(5,5);                                                  % Boş karakterlerin tespiti için oluşturuldu. {**squareIsEmpty[i]=0 => Karakter 'O' veya 'S' } {**squareIsEmpty=1 => Karakter 'BOŞ' }

sayac1=0;
sayac2=0;
sayac3=0;
sayac4=0;
sayac5=0;
sayac6=0;
sayac7=0;
sayac8=0;
sayac9=0;
sayac10=0;
sayac11=0;
sayac12=0;
sayac13=0;
sayac14=0;
sayac15=0;
sayac16=0;
sayac17=0;
sayac18=0;
sayac19=0;
sayac20=0;
sayac21=0;
sayac22=0;
sayac23=0;
sayac24=0;
sayac25=0;

for x=1:93                                                                 % 25 karede 93x93 boyutunda olduğundan her karenin 1.satırından 93. satırına, 1.sütunundan 93. sütununa kadar kontrol edildi.
    for y=1:93
        if i1(x,y)<0.4
            sayac1=sayac1+1;
        end
        if i2(x,y)<0.4
            sayac2=sayac2+1;
        end
        if i3(x,y)<0.4f
            sayac3=sayac3+1;
        end
        if i4(x,y)<0.4
            sayac4=sayac4+1;
        end   
        if i5(x,y)<0.4
            sayac5=sayac5+1;
        end    
        if i6(x,y)<0.4
            sayac6=sayac6+1;
        end    
        if i7(x,y)<0.4
            sayac7=sayac7+1;
        end
        if i8(x,y)<0.4
            sayac8=sayac8+1;
        end    
        if i9(x,y)<0.4
            sayac9=sayac9+1;
        end    
        if i10(x,y)<0.4
            sayac10=sayac10+1;
        end    
        if i11(x,y)<0.4
            sayac11=sayac11+1;
        end    
        if i12(x,y)<0.4
            sayac12=sayac12+1;
        end    
        if i13(x,y)<0.4
            sayac13=sayac13+1;
        end    
        if i14(x,y)<0.4
            sayac14=sayac14+1;
        end    
        if i15(x,y)<0.4
            sayac15=sayac15+1;
        end    
        if i16(x,y)<0.4
            sayac16=sayac16+1;
        end    
        if i17(x,y)<0.4
            sayac17=sayac17+1;
        end    
        if i18(x,y)<0.4
            sayac18=sayac18+1;
        end    
        if i19(x,y)<0.4
            sayac19=sayac19+1;
        end
        if i20(x,y)<0.4
            sayac20=sayac20+1;
        end    
        if i21(x,y)<0.4
            sayac21=sayac21+1;
        end    
        if i22(x,y)<0.4
            sayac22=sayac22+1;
        end    
        if i23(x,y)<0.4
            sayac23=sayac23+1;
        end    
        if i24(x,y)<0.4
            sayac24=sayac24+1;
        end    
        if i25(x,y)<0.4
            sayac25=sayac25+1;
        end
    end
end

if sayac1==0                                                               % Eğer karede siyah kare tespit edilmediyse sayacın değeri 0 kaldı ve boş olduğu tespit edildi.
    squareIsEmpty(1,1)=1;
end
if sayac2==0
    squareIsEmpty(1,2)=1;
end
if sayac3==0
    squareIsEmpty(1,3)=1;
end
if sayac4==0
    squareIsEmpty(1,4)=1;
end
if sayac5==0
    squareIsEmpty(1,5)=1;
end
if sayac6==0
    squareIsEmpty(2,1)=1;
end
if sayac7==0
    squareIsEmpty(2,2)=1;
end
if sayac8==0
    squareIsEmpty(2,3)=1;
end
if sayac9==0
    squareIsEmpty(2,4)=1;
end
if sayac10==0
    squareIsEmpty(2,5)=1;
end
if sayac11==0
    squareIsEmpty(3,1)=1;
end
if sayac12==0
    squareIsEmpty(3,2)=1;
end
if sayac13==0
    squareIsEmpty(3,3)=1;
end
if sayac14==0
    squareIsEmpty(3,4)=1;
end
if sayac15==0
    squareIsEmpty(3,5)=1;
end
if sayac16==0
    squareIsEmpty(4,1)=1;
end
if sayac17==0
    squareIsEmpty(4,2)=1;
end
if sayac18==0
    squareIsEmpty(4,3)=1;
end
if sayac19==0
    squareIsEmpty(4,4)=1;
end
if sayac20==0
    squareIsEmpty(4,5)=1;
end
if sayac21==0
    squareIsEmpty(5,1)=1;
end
if sayac22==0
    squareIsEmpty(5,2)=1;
end
if sayac23==0
    squareIsEmpty(5,3)=1;
end
if sayac24==0
    squareIsEmpty(5,4)=1;
end
if sayac25==0
    squareIsEmpty(5,5)=1;
end

% ******* S-O Bulma *********
if squareIsEmpty(1,1)==0                                                   % 'O' karakterini bulmak için imfill komutu kullanıldı.
    i_1=imfill(i1_ters,'holes');
else
    i_1=i1;
end
if squareIsEmpty(1,2)==0
    i_2=imfill(i2_ters,'holes');
else
    i_2=i2;
end
if squareIsEmpty(1,3)==0
    i_3=imfill(i3_ters,'holes');
else
    i_3=i3;
end
if squareIsEmpty(1,4)==0
    i_4=imfill(i4_ters,'holes');
else
    i_4=i4;
end
if squareIsEmpty(1,5)==0
    i_5=imfill(i5_ters,'holes');
else
    i_5=i5;
end
if squareIsEmpty(2,1)==0
    i_6=imfill(i6_ters,'holes');
else
    i_6=i6;
end
if squareIsEmpty(2,2)==0
    i_7=imfill(i7_ters,'holes');
else
    i_7=i7;
end
if squareIsEmpty(2,3)==0
    i_8=imfill(i8_ters,'holes');
else
    i_8=i8;
end
if squareIsEmpty(2,4)==0
    i_9=imfill(i9_ters,'holes');
else
    i_9=i9;
end
if squareIsEmpty(2,5)==0
    i_10=imfill(i10_ters,'holes');
else
    i_10=i10;
end
if squareIsEmpty(3,1)==0
    i_11=imfill(i11_ters,'holes');
else
    i_11=i11;
end
if squareIsEmpty(3,2)==0
    i_12=imfill(i12_ters,'holes');
else
    i_12=i12;
end
if squareIsEmpty(3,3)==0
    i_13=imfill(i13_ters,'holes');
else
    i_13=i13;
end
if squareIsEmpty(3,4)==0
    i_14=imfill(i14_ters,'holes');
else
    i_14=i14;
end
if squareIsEmpty(3,5)==0
    i_15=imfill(i15_ters,'holes');
else
    i_15=i15;
end
if squareIsEmpty(4,1)==0
    i_16=imfill(i16_ters,'holes');
else
    i_16=i16;
end
if squareIsEmpty(4,2)==0
    i_17=imfill(i17_ters,'holes');
else
    i_17=i17;
end
if squareIsEmpty(4,3)==0
    i_18=imfill(i18_ters,'holes');
else
    i_18=i18;
end
if squareIsEmpty(4,4)==0
    i_19=imfill(i19_ters,'holes');
else
    i_19=i19;
end
if squareIsEmpty(4,5)==0
    i_20=imfill(i20_ters,'holes');
else
    i_20=i20;
end
if squareIsEmpty(5,1)==0
    i_21=imfill(i21_ters,'holes');
else
    i_21=i21;
end
if squareIsEmpty(5,2)==0
    i_22=imfill(i22_ters,'holes');
else
    i_22=i22;
end
if squareIsEmpty(5,3)==0
    i_23=imfill(i23_ters,'holes');
else
    i_23=i23;
end
if squareIsEmpty(5,4)==0
    i_24=imfill(i24_ters,'holes');
else
    i_24=i24;
end
if squareIsEmpty(5,5)==0
    i_25=imfill(i25_ters,'holes');
 else
    i_25=i25;
end

sayac1=0;
sayac2=0;
sayac3=0;
sayac4=0;
sayac5=0;
sayac6=0;
sayac7=0;
sayac8=0;
sayac9=0;
sayac10=0;
sayac11=0;
sayac12=0;
sayac13=0;
sayac14=0;
sayac15=0;
sayac16=0;
sayac17=0;
sayac18=0;
sayac19=0;
sayac20=0;
sayac21=0;
sayac22=0;
sayac23=0;
sayac24=0;
sayac25=0;

for x=1:93                                                                 % Boş olamyan karakterlerdeki siyah pixel sayısı belirleniyor. 'O' ve 'S' tespiti siyah pixel sayısından yola çıklılarak bulunacak.
    for y=1:93
        if i_1(x,y)<0.4                                                    % Pixel siyah ise
            if squareIsEmpty(1,1)==0                                       % Kare boş karakter DEĞİL ise
                sayac1=sayac1+1;                                           % Sayacı 1 arttır.
            end
        end
        if i_2(x,y)<0.4
            if squareIsEmpty(1,2)==0
                sayac2=sayac2+1;
            end
        end
        if i_3(x,y)<0.4
            if squareIsEmpty(1,3)==0
                sayac3=sayac3+1;
            end
        end
        if i_4(x,y)<0.4
            if squareIsEmpty(1,4)==0
                sayac4=sayac4+1;
            end
        end
       if i_5(x,y)<0.4
            if squareIsEmpty(1,5)==0
                sayac5=sayac5+1;
            end
       end
       if i_6(x,y)<0.4
            if squareIsEmpty(2,1)==0
                sayac6=sayac6+1;
            end
       end
       if i_7(x,y)<0.4
            if squareIsEmpty(2,2)==0
                sayac7=sayac7+1;
            end
       end
       if i_8(x,y)<0.4
            if squareIsEmpty(2,3)==0
                sayac8=sayac8+1;
            end
       end
       if i_9(x,y)<0.4
            if squareIsEmpty(2,4)==0
                sayac9=sayac9+1;
            end
       end
       if i_10(x,y)<0.4
            if squareIsEmpty(2,5)==0
                sayac10=sayac10+1;
            end
       end
       if i_11(x,y)<0.4
            if squareIsEmpty(3,1)==0
                sayac11=sayac11+1;
            end
       end
       if i_12(x,y)<0.4
            if squareIsEmpty(3,2)==0
                sayac12=sayac12+1;
            end
       end
       if i_13(x,y)<0.4
            if squareIsEmpty(3,3)==0
                sayac13=sayac13+1;
            end
       end
       if i_14(x,y)<0.4
            if squareIsEmpty(3,4)==0
                sayac14=sayac14+1;
            end
       end
       if i_15(x,y)<0.4
            if squareIsEmpty(3,5)==0
                sayac15=sayac15+1;
            end
       end
       if i_16(x,y)<0.4
            if squareIsEmpty(4,1)==0
                sayac16=sayac16+1;
            end
       end
       if i_17(x,y)<0.4
            if squareIsEmpty(4,2)==0
                sayac17=sayac17+1;
            end
       end
       if i_18(x,y)<0.4
            if squareIsEmpty(4,3)==0
                sayac18=sayac18+1;
            end
       end 
       if i_19(x,y)<0.4
            if squareIsEmpty(4,4)==0
                sayac19=sayac19+1;
            end
       end
       if i_20(x,y)<0.4
            if squareIsEmpty(4,5)==0
                sayac20=sayac20+1;
            end
       end
       if i_21(x,y)<0.4
            if squareIsEmpty(5,1)==0
                sayac21=sayac21+1;
            end
       end
       if i_22(x,y)<0.4
            if squareIsEmpty(5,2)==0
                sayac22=sayac22+1;
            end
       end
       if i_23(x,y)<0.4
            if squareIsEmpty(5,3)==0
                sayac23=sayac23+1;
            end
       end
       if i_24(x,y)<0.4
            if squareIsEmpty(5,4)==0
                sayac24=sayac24+1;
            end
       end
       if i_25(x,y)<0.4
            if squareIsEmpty(5,5)==0
                sayac25=sayac25+1;
            end
       end
    end
end

sosmatrix=zeros(5,5);                                                      % SOS tablosu bu matrise doldurulacak. sosmatrix[i]=-1 ==> 'S'
                                                                           %                                      sosmatrix[i]=0  ==> 'BOŞ'
if squareIsEmpty(1,1)==0                                                   %                                      sosmatrix[i]=1  ==> 'O'
if (10<sayac1) && (sayac1<7500)
    sosmatrix(1,1)=1;
else
    sosmatrix(1,1)=-1;
end
end
if squareIsEmpty(1,2)==0                                                   % Kare boş karakter DEĞİL ise
if (10<sayac2) && (sayac2<7500)                                            % 'O' ve 'S' karakterlerinin siyah pixel sayısına göre filtre uygulanıyor
    sosmatrix(1,2)=1;                                                      % Karakter 'O' dur.
else
    sosmatrix(1,2)=-1;                                                     % Karakter 'S' dir.
end
end
if squareIsEmpty(1,3)==0
if (10<sayac3) && (sayac3<7500)
    sosmatrix(1,3)=1;
else
    sosmatrix(1,3)=-1;
end
end
if squareIsEmpty(1,4)==0
if (10<sayac4) && (sayac4<7500)
    sosmatrix(1,4)=1;
else
    sosmatrix(1,4)=-1;
end
end
if squareIsEmpty(1,5)==0
if  (10<sayac5) && (sayac5<7500)
    sosmatrix(1,5)=1;
else
    sosmatrix(1,5)=-1;
end
end
if squareIsEmpty(2,1)==0
if (10<sayac6) && (sayac6<7500)
    sosmatrix(2,1)=1;
else
    sosmatrix(2,1)=-1;
end
end
if squareIsEmpty(2,2)==0
if (10<sayac7) && (sayac7<7500)
    sosmatrix(2,2)=1;
else
    sosmatrix(2,2)=-1;
end
end
if squareIsEmpty(2,3)==0
if (10<sayac8) && (sayac8<7500)
    sosmatrix(2,3)=1;
else
    sosmatrix(2,3)=-1;
end
end
if squareIsEmpty(2,4)==0
if (10<sayac9) && (sayac9<7500)
    sosmatrix(2,4)=1;
else
    sosmatrix(2,4)=-1;
end
end
if squareIsEmpty(2,5)==0
if (10<sayac10) && (sayac10<7500)
    sosmatrix(2,5)=1;
else
    sosmatrix(2,5)=-1;
end
end
if squareIsEmpty(3,1)==0
if (10<sayac11) && (sayac11<7500)
    sosmatrix(3,1)=1;
else
    sosmatrix(3,1)=-1;
end
end
if squareIsEmpty(3,2)==0
if (10<sayac12) && (sayac12<7500)
    sosmatrix(3,2)=1;
else
    sosmatrix(3,2)=-1;
end
end
if squareIsEmpty(3,3)==0
if (10<sayac13) && (sayac13<7500)
    sosmatrix(3,3)=1;
else
    sosmatrix(3,3)=-1;
end
end
if squareIsEmpty(3,4)==0
if (10<sayac14) && (sayac14<7500)
    sosmatrix(3,4)=1;
else
    sosmatrix(3,4)=-1;
end
end
if squareIsEmpty(3,5)==0
if (10<sayac15) && (sayac15<7500)
    sosmatrix(3,5)=1;
else
    sosmatrix(3,5)=-1;
end
end
if squareIsEmpty(4,1)==0
if (10<sayac16) && (sayac16<7500)
    sosmatrix(4,1)=1;
else
    sosmatrix(4,1)=-1;
end
end
if squareIsEmpty(4,2)==0
if (10<sayac17) && (sayac17<7500)
    sosmatrix(4,2)=1;
else
    sosmatrix(4,2)=-1;
end
end
if squareIsEmpty(4,3)==0
if (10<sayac18) && (sayac18<7500)
    sosmatrix(4,3)=1;
else
    sosmatrix(4,3)=-1;
end
end
if squareIsEmpty(4,4)==0
if (10<sayac19) && (sayac19<7500)
    sosmatrix(4,4)=1;
else
    sosmatrix(4,4)=-1;
end
end
if squareIsEmpty(4,5)==0
if (10<sayac20) && (sayac20<7500)
    sosmatrix(4,5)=1;
else
    sosmatrix(4,5)=-1;
end
end
if squareIsEmpty(5,1)==0
if (10<sayac21) && (sayac21<7500)
    sosmatrix(5,1)=1;
else
    sosmatrix(5,1)=-1;
end
end
if squareIsEmpty(5,2)==0
if (10<sayac22) && (sayac22<7500)
    sosmatrix(5,2)=1;
else
    sosmatrix(5,2)=-1;
end
end
if squareIsEmpty(5,3)==0
if (10<sayac23) && (sayac23<7500)
    sosmatrix(5,3)=1;
else
    sosmatrix(5,3)=-1;
end
end
if squareIsEmpty(5,4)==0
if (10<sayac24) && (sayac24<7500)
    sosmatrix(5,4)=1;
else
    sosmatrix(5,4)=-1;
end
end
if squareIsEmpty(5,5)==0
if (10<sayac25) && (sayac25<7500)
    sosmatrix(5,5)=1;
else
    sosmatrix(5,5)=-1;
end
end

%************** SOS ÇÖZÜMLEME ALGORİTMASI ******************   

beConvertMatrix=zeros(5,5);                     % Tabloda sos olan yerleri işaretlemek için bir değişim matrisi oluşturuldu. Eğer bu matristeki bir elemanın değeri 1 ise o elemanın resmi boyanacak.

%**** Orta Bölge Sos Belirleme Algoritması *****

for x=2:4                                       % Satır Numarası
    for y=2:4                                   % Sütun Numarası
        
        if sosmatrix(x,y)==1                    % Ortadaki karelerden birinde o tespit ederse
            
%***************     
            if sosmatrix(x+1,y-1)==-1           % Sol-Alt kareyi kontrol edecek.
                if sosmatrix(x-1,y+1)==-1
                    beConvertMatrix(x-1,y+1)=1;
                    beConvertMatrix(x+1,y-1)=1;
                    beConvertMatrix(x,y)=1;
                end
            end
%**************** 
            if sosmatrix(x,y-1)==-1             % Sol kareyi kontrol edecek.
                if sosmatrix(x,y+1)==-1
                    beConvertMatrix(x,y-1)=1;
                    beConvertMatrix(x,y+1)=1;                     
                    beConvertMatrix(x,y)=1;
                end
            end
%*****************           
            if sosmatrix(x-1,y-1)==-1           % Sol-Üst kareyi kontrol edecek.
                if sosmatrix(x+1,y+1)==-1
                    beConvertMatrix(x-1,y-1)=1;
                    beConvertMatrix(x+1,y+1)=1;
                    beConvertMatrix(x,y)=1;
                end
            end
%****************
            if sosmatrix(x-1,y)==-1             % Üst kareyi kontrol edecek.
                if sosmatrix(x+1,y)==-1
                    beConvertMatrix(x-1,y)=1;
                    beConvertMatrix(x+1,y)=1;
                    beConvertMatrix(x,y)=1;
                end
            end
%*****************
        end
    end
end

%**** Köşe Sos Belirleme Algoritması *****

if sosmatrix(1,1)==1        %(1,1) köşe kontrol edildi.
    beConvertMatrix(1,1)=0;
end
if sosmatrix(1,5)==1        %(1,5) köşe kontrol edildi.
    beConvertMatrix(1,5)=0;
end
if sosmatrix(5,1)==1        %(5,1) köşe kontrol edildi.
    beConvertMatrix(5,1)=0;
end
if sosmatrix(5,5)==1        %(5,5) köşe kontrol edildi.
    beConvertMatrix(5,5)=0;
end

%**** Alt ve Üst Kenar Sos Belirleme Algoritması *****

for x=1:4:5                             % Alt ve Üst kenarlar sağa-sola kontrol edildii.
    for y=2:4
        if sosmatrix(x,y)==1
        if sosmatrix(x,y-1)==-1
            if sosmatrix(x,y+1)==-1
             beConvertMatrix(x,y)=1;
             beConvertMatrix(x,y-1)=1;
             beConvertMatrix(x,y+1)=1;
            end
        end
        end
    end
end

for y=1:4:5                              % Sağ ve Sol kenarlar aşağı-yukarı kontrol edildi.
    for x=2:4
       if sosmatrix(x,y)==1
          if sosmatrix(x-1,y)==-1
             if sosmatrix(x+1,y)==-1
                beConvertMatrix(x,y)=1;
                beConvertMatrix(x-1,y)=1;
                beConvertMatrix(x+1,y)=1;
             end
          end
       end
    end
end

if beConvertMatrix(1,1)==1                                                 %Burada yazılan kodlar ile tespit edilen soslar işaretleniyor.
    i1=imcomplement(i1);
end
if beConvertMatrix(1,2)==1
    i2=imcomplement(i2);
end
if beConvertMatrix(1,3)==1
    i3=imcomplement(i3);
end
if beConvertMatrix(1,4)==1
    i4=imcomplement(i4);
end
if beConvertMatrix(1,5)==1
    i5=imcomplement(i5);
end
if beConvertMatrix(2,1)==1
    i6=imcomplement(i6);
end
if beConvertMatrix(2,2)==1
    i7=imcomplement(i7);
end
if beConvertMatrix(2,3)==1
    i8=imcomplement(i8);
end
if beConvertMatrix(2,4)==1
    i9=imcomplement(i9);
end
if beConvertMatrix(2,5)==1
    i10=imcomplement(i10);
end
if beConvertMatrix(3,1)==1
    i11=imcomplement(i11);
end
if beConvertMatrix(3,2)==1
    i12=imcomplement(i12);
end
if beConvertMatrix(3,3)==1
    i13=imcomplement(i13);
end
if beConvertMatrix(3,4)==1
    i14=imcomplement(i14);
end
if beConvertMatrix(3,5)==1
    i15=imcomplement(i15);
end
if beConvertMatrix(4,1)==1
    i16=imcomplement(i16);
end
if beConvertMatrix(4,2)==1
    i17=imcomplement(i17);
end
if beConvertMatrix(4,3)==1
    i18=imcomplement(i18);
end
if beConvertMatrix(4,4)==1
    i19=imcomplement(i19);
end
if beConvertMatrix(4,5)==1
    i20=imcomplement(i20);
end
if beConvertMatrix(5,1)==1
    i21=imcomplement(i21);
end
if beConvertMatrix(5,2)==1
    i22=imcomplement(i22);
end
if beConvertMatrix(5,3)==1
    i23=imcomplement(i23);
end
if beConvertMatrix(5,4)==1
    i24=imcomplement(i24);
end
if beConvertMatrix(5,5)==1
    i25=imcomplement(i25);
end

for x=1:93                                                                 %Burada tüm tablo elemanlarının resimlerine kenarlık eklendi.
    i1(1,x)=0;
    i2(1,x)=0;
    i3(1,x)=0;
    i4(1,x)=0;
    i5(1,x)=0;
    i6(1,x)=0;
    i7(1,x)=0;
    i8(1,x)=0;
    i9(1,x)=0;
    i10(1,x)=0;
    i11(1,x)=0;
    i12(1,x)=0;
    i13(1,x)=0;
    i14(1,x)=0;
    i14(1,x)=0;
    i15(1,x)=0;
    i16(1,x)=0;
    i17(1,x)=0;
    i18(1,x)=0;
    i19(1,x)=0;
    i20(1,x)=0;
    i21(1,x)=0;
    i22(1,x)=0;
    i23(1,x)=0;
    i24(1,x)=0;
    i25(1,x)=0;
    
    i1(93,x)=0;
    i2(93,x)=0;
    i3(93,x)=0;
    i4(93,x)=0;
    i5(93,x)=0;
    i6(93,x)=0;
    i7(93,x)=0;
    i8(93,x)=0;
    i9(93,x)=0;
    i10(93,x)=0;
    i11(93,x)=0;
    i12(93,x)=0;
    i13(93,x)=0;
    i14(93,x)=0;
    i14(93,x)=0;
    i15(93,x)=0;
    i16(93,x)=0;
    i17(93,x)=0;
    i18(93,x)=0;
    i19(93,x)=0;
    i20(93,x)=0;
    i21(93,x)=0;
    i22(93,x)=0;
    i23(93,x)=0;
    i24(93,x)=0;
    i25(93,x)=0;
    
    i1(x,1)=0;
    i2(x,1)=0;
    i3(x,1)=0;
    i4(x,1)=0;
    i5(x,1)=0;
    i6(x,1)=0;
    i7(x,1)=0;
    i8(x,1)=0;
    i9(x,1)=0;
    i10(x,1)=0;
    i11(x,1)=0;
    i12(x,1)=0;
    i13(x,1)=0;
    i14(x,1)=0;
    i14(x,1)=0;
    i15(x,1)=0;
    i16(x,1)=0;
    i17(x,1)=0;
    i18(x,1)=0;
    i19(x,1)=0;
    i20(x,1)=0;
    i21(x,1)=0;
    i22(x,1)=0;
    i23(x,1)=0;
    i24(x,1)=0;
    i25(x,1)=0;
    
    i1(x,93)=0;
    i2(x,93)=0;
    i3(x,93)=0;
    i4(x,93)=0;
    i5(x,93)=0;
    i6(x,93)=0;
    i7(x,93)=0;
    i8(x,93)=0;
    i9(x,93)=0;
    i10(x,93)=0;
    i11(x,93)=0;
    i12(x,93)=0;
    i13(x,93)=0;  
    i14(x,93)=0;
    i14(x,93)=0;
    i15(x,93)=0;
    i16(x,93)=0;
    i17(x,93)=0;
    i18(x,93)=0;
    i19(x,93)=0;
    i20(x,93)=0;
    i21(x,93)=0;
    i22(x,93)=0;
    i23(x,93)=0;
    i24(x,93)=0;
    i25(x,93)=0;   
end

% Tüm resimler birleştirilerek resultImage matrisinde toplandı ve çözümlenmiş resim elde edildi.
resultImage=[i1 i2 i3 i4 i5; i6 i7 i8 i9 i10; i11 i12 i13 i14 i15; i16 i17 i18 i19 i20; i21 i22 i23 i24 i25];

figure('Name','Orjinal Resim'), 
imshow(table);                      % Orjinal Resmi Görüntüle.
figure('Name','Çözümlenmiş Resim');
imshow(resultImage);                % Çözümlenmiş Resmi Görüntüle.
