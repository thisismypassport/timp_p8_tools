pico-8 cartridge // http://www.pico-8.com
version 36
__lua__
t=1assert(true,1)assert(t==1,2)assert("\0ᶜ3\n	⁵Aa"=="\0ᶜ3\n	⁵Aa")assert("'\"\\'"==[['"\']],3)assert("]]"=="]]",4)t=1w=1assert(t==1and w==1,5)assert(0xf.f==0xf.f and 2.25==2.25,6)e,o,u=1,{},3e,o.n,o[1],u=u,2,4,e assert(e==3and u==1and o["n"]==2and o[1]==4,8)do local n=e+1assert(n==4,9)local e=n*2assert(e==8,9.1)end assert(e==3,9.2)local t=_ENV assert(t==_ENV,10)local t assert(t==nil,11)function d()return 1,2,3end local t,u,h,i,w,p=0,d()assert(t==0and u==1and h==2and i==3and w==nil and p==nil,12)function d(...)return...end assert(d(1,2,3)==1,13)e,o=(d(1,2))assert(e==1and o==nil,14)e,o=d(1,2),3assert(e==1and o==3,15)assert(pack(d(1,2,nil,3,nil,nil)).n==6,16)function d(...)return...,...,...end assert(pack(d(1,2,3)).n==5,17)for n=1,3do assert(select(n,d(1,2,3))==1,18)end assert(select(4,d(1,2,3))==2,19)n=0for e=5,1,-2do n=1assert(e==5or e==3or e==1,20)end assert(n==1,20.5)for n=5,1do assert(false,21)end n=0for e,d in ipairs{4,5}do assert(e==1and d==4or e==2and d==5,22)n+=1end assert(n==2,22.5)if n==2then n+=1else assert(false,23)end assert(n==3,23.5)if n==2then assert(false,24)elseif n==3then n+=1else assert(false,24.5)end assert(n==4,24.6)if n==2then assert(false,25)else n+=1end assert(n==5,25.5)if(n==5)n=0n=1else assert(false,26)
assert(n==1,27)if(n==5)assert(false,28)else n=2
assert(n==2,29)l=1while(n>0)n-=1l*=2
assert(l==4and n==0,30)while l>0do l-=1n+=1end assert(n==4and l==0,31)while n>0do n-=1l+=1if l==3then break end end assert(n==1and l==3,32)repeat n+=1l-=1until n==1or n==3assert(n==3and l==1,33)function d()return end function a()end assert(d()==nil and pack(d()).n==0,34)assert(a()==nil and pack(a()).n==0,35)function c(...)return...end e={1,2,e=1,o=2,3,4,[12]=4,c(5,6,nil,8)}assert(e[1]==1and e[2]==2and e[3]==3and e[4]==4and e[5]==5and e[6]==6,36)assert(e[7]==nil and e[8]==8and e["e"]==1and e.o==2and e[12]==4,37)function c(...)return{...}end do local function n(...)return{...,e=3}end assert(#n(1,2)==1and n(1,2).e==3,38)end assert(#c(1,2)==2,39)assert(1+4*5==21and 498&255<<4==496,40)assert((1+4)*5==25and(498&255)<<4==3872,41)assert(-2^4==-16and(-2)^4==16,42)assert(1~=2and 1~=2or assert(false,43),43.1)i={d=function(n)return n.i end,i=3}assert(i:d()==3and i.d{i=4}==4,44)setmetatable(i,{__index=function(e,n)return n end})assert(i.p=="p",45)i.a=i function i.a.a.i(n)return n end assert(i.i(false)==false,46)function i.a.a:h(n)return self,n end assert(i:h(true)==i and select(2,i:h(true))==true,47)do t=1do::x::t+=1if(t==4)goto e
goto x end::e::assert(t==4,48)end do::y::do goto y assert(false,49)::y::end end t=0for n,e in next,{5}do assert(n==1and e==5,50)t+=1end assert(t==1,50.5)do local n,_ENV=add,{assert=assert}n(_ENV,3)assert(_ENV[1]==3,51)end local function n(e)_ENV=e end local e=_ENV n{assert=assert,b=123}assert(b==123,52)n(e)function d()return 9,0,1end function z(n)return n()end function A(n)return(n())end assert(pack(z(d)).n==3and pack(A(d)).n==1,53)t=72t-=4*2t>>>=16assert(t==.00098,54)if t<1then if(t==0)t=123
else t=321end assert(t==.00098,55)do local n=1function n()end end assert(D==nil,56)t=1repeat local n=2until assert(n==2,57)do local n=2repeat local e=3until assert(n*e==6,57.5)end local function d()return 3end assert(-d()+d()==0,58)local function e()return d end assert(e()()==3,59)local function n(e,d)local o=function()e+=1return e end if d and d>0then return o,n(e*2,d-1)else return o end end local o,l,a,t=n(10),n(20),n(30,1)assert(o()==11and l()==21and n(0)()==1and a()==31and t()==61and o()==12and l()==22and n(0)()==1and a()==32and t()==62,60)function r(n)return n end assert(r"me"=="me"and r[[me]]=="me",61)g={r=function(e,n)return n end}assert(g:r"me"=="me"and#g:r{}==0,62)do while true do if 1==1then::zoo::end goto zoo end::zoo::end local n=1function B()return n end local n=2assert(B()==1,63)local n=1do function k()return n end local n=2assert(k()==1,64)end do local n,e=1,2::_1::assert(e==2,65)if(n>1)assert(f()==4and e==2,66)goto out
local e=3f=function()e+=1return e end n+=1goto _1 end::out::do local n=1::_1::local d=n e=f f=function()d+=1return d end n+=1if(n==3)goto out2 else goto _1
end::out2::assert(f()==3and f()==4and e()==2and f()==5and e()==3,67)do goto foo local n::foo::end if(1==1);
local n=0function ord(e,d)assert(n==e,68)n+=1return d end local n={}ord(0,n).t,ord(1,n).t=ord(2,2),ord(3,function()return 3end)(ord(4,1),ord(5,1))assert(n.t==2,69)local o,n=1,2assert(n==2,70)function d(e,n)assert(n==2,71)end d(1,2)m=0s={10,20}function e()m+=1return m end s[e()]+=1assert(s[1]==11and s[2]==20,72)n=0n+=16assert(n==16,73)assert([[[[]]=="[[",73.5)if(1==1)if(2==3)n=1else n=2
assert(n==2,74)if(1==2)x=1else if(1==3)x=2else x=3
assert(x==3,76)if(1==1)if 2==2then n=4else n=5end else n=6
assert(n==4,77)do n=0if(1==2)end n=123
assert(n==123,78)printh"DONE"
__gfx__
dcf6c3968fc4f9d8632d39e67f3953076b48f7b7a87b8f3a1c7d3c647677c0aa345a17500639192c448e3ae773c1ef4b9b8ced74657b1a43f0d23d321a0ad40a
4c49a63747ffeabf17d2d2b36f4ee65c129fbbb1663d2dc2ab0daefb2326aec74f6acf74d9ab50d107f004901073e9cfa89bf6908d49a65e45a6804661ba5179
__map__
7abd0b061b85dc7a3d47cae943ce8effc7516254f412bd5cfe0ccd4857697bd16a75fa3860d4b836040c9d134e2c4816dd157b192c7815d386d6a9838d997b68f1082175bcdb96c6dcac0476ff502de82a4c22f317e3e8f3fe2133ce4bdd5d16be563ae2414cbb4f6df414c07c602ff7d6836f48be07f9c16da0b3a334de4848
__gff__
aa52cccc84159c6328341bff1000c7ebefa69980293c00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__sfx__
123000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004
__music__
07 12345678
__label__
v0606660600060000660000060600660666060006600000000000000000000000000000000000000000000000000000000000000000000000000000000000000
6v606000600060006060000060606060606060006060000000000000000000000000000000000000000000000000000000000000000000000000000000000000
66v06600600060006060000060606060660060006060000000000000000000000000000000000000000000000000000000000000000000000000000000000000
606v6000600060006060000066606060606060006060000000000000000000000000000000000000000000000000000000000000000000000000000000000000
6060v660666066606600000066606600606066606660000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000v00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000v0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000v000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000v00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000v0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000v000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000v00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000000v0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000v000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000v00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000000000v0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000v000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000v00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000000000000v0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000v000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000v00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000000000000000v0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000v000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000v00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000000000000000000v0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000v000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000v00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000000000000000000000v0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000v000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000v00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000000000000000000000000v0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000v000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000v00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000000000000000000000000000v0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000v000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000v00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000000000000000000000000000000v0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000v000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000v00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000000000000000000000000000000000v0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000v000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000v00000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000000000000000000000000000000000000v0000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000v000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000v00000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000000000000000000000000000000000000000v0000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000v000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000v00000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000000000000000000000000000000000000000000v0000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000v000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000v00000000000000000000000000000000000000000000000000000000000000000000000000000
000000000000000000000000000000000000000000000000000v0000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000v000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000v00000000000000000000000000000000000000000000000000000000000000000000000000
000000000000000000000000000000000000000000000000000000v0000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000v000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000v00000000000000000000000000000000000000000000000000000000000000000000000
000000000000000000000000000000000000000000000000000000000v0000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000v000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000v00000000000000000000000000000000000000000000000000000000000000000000
000000000000000000000000000000000000000000000000000000000000v0000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000v000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000v00000000000000000000000000000000000000000000000000000000000000000
000000000000000000000000000000000000000000000000000000000000000v0000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000v000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000v00000000000000000000000000000000000000000000000000000000000000
000000000000000000000000000000000000000000000000000000000000000000v0000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000v000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000v00000000000000000000000000000000000000000000000000000000000
000000000000000000000000000000000000000000000000000000000000000000000v0000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000v000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000v00000000000000000000000000000000000000000000000000000000
000000000000000000000000000000000000000000000000000000000000000000000000v0000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000v000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000v00000000000000000000000000000000000000000000000000000
000000000000000000000000000000000000000000000000000000000000000000000000000v0000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000v000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000v00000000000000000000000000000000000000000000000000
000000000000000000000000000000000000000000000000000000000000000000000000000000v0000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000v000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000v00000000000000000000000000000000000000000000000
000000000000000000000000000000000000000000000000000000000000000000000000000000000v0000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000v000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000v00000000000000000000000000000000000000000000
000000000000000000000000000000000000000000000000000000000000000000000000000000000000v0000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000v000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000v00000000000000000000000000000000000000000
000000000000000000000000000000000000000000000000000000000000000000000000000000000000000v0000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000v000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000v00000000000000000000000000000000000000
000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000v0000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000v000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000v00000000000000000000000000000000000
000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000v0000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000v000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000v00000000000000000000000000000000
000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000v0000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000v000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000v00000000000000000000000000000
000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000v0000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000v000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0123456789abcde00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__meta:hello__
hello1
hello2
__meta:hello2__
hello3
hello4
__meta:title__
this tests a good deal of syntax