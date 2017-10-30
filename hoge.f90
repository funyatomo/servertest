program hoge
  implicit none

  integer i,j,k,l
  integer,parameter::n=10000,m=100
  real(8) x1,x2,x3,x4
  real(8),allocatable::array(:,:,:)

  allocate(array(m,m,m))

  call cpu_time(x1)

  do l=1,n
    do k=1,m
      do j=1,m
        do i=1,m
          array(i,j,k) = dble(i*j*k*l)*0.d0
  enddo;enddo;enddo;enddo

  call cpu_time(x2)

  print*, x2-x1,"[sec]"
  print*
  stop

endprogram hoge
