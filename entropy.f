
            real*8 r(2000), gval(2000)
            integer i,step
               real*8 sum, h, rho
             PARAMETER ( PI = 3.1415927 ) 
           open (unit=111, file="fort.22")
          
           do i =1,895
		read(111,*)r(i),gval(i)
	   enddo
           
           rho=0.24
           sum=0.00
              h=0.01
	       a =3.96
           step= int(a/h)+1.00
              write(*,*)step
              do 10 i =1, step
       sum = sum+abs(gval(i)log(gval(i))-gval(i)+1.00)i**2.0
c		write(*,*)'iamaftersum'
               if(i.eq.1 .or. i.eq.step)goto 10
                sum=sum+abs(gval(i)log(gval(i))-gval(i)+1.00*i**2.0)
10                continue 
                sum=sum*h*0.5
                write(*,*)sum*rho*PI*(-2.0), sum

                 stop
                 end
