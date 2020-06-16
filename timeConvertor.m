clc
gy=2019;
gm=7;
gd=31;
g_d_m ={ 0, 31, 59, 90, 120, 151, 181, 212, 243, 273, 304, 334 };

if(gm>2)    
    gy2=int64((gy+1)) ;
else        
    gy2=int64(gy)  ; 
end

days=int64(355666+(365*gy)+(idivide(int64(gy2+3),int64(4),'floor')))-(idivide(int64(gy2+99),int64(100),'floor'))+(idivide(int64(gy2+399),int64(400),'floor')+gd+g_d_m{gm});


jy=(idivide(int64(days),int64(12053),'floor')*33)-1595;

    
days = rem(days,12053);

jy=jy+(4*int64((idivide(int64(days),int64(1461),'floor'))));

days=int64(rem(days,1461));

if days>365
    jy=jy+int64((idivide(int64(days-1),int64(365),'floor')));
    days=int64(rem((days-1),365));
end

if days<186
    

    jm=1+idivide(int64(days),int64(31),'floor');
else

    jm=7+idivide(int64(days-186),int64(30),'floor');
end

if days<186
    jd=1+int64(int64(rem(days,31)));
else
    jd=1+int64(int64(rem((days-186),30)));
end

disp(jy);
disp((jm));
disp((jd));



    
