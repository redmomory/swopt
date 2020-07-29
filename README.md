Convolution Layer Optimization        
===============================

1.설명                 
------
   
* CNN에서는 Convolution Layer의 Computation Time이 굉장히 길기 때문에, 이를 GPU가 없는 Board에서 줄이기 위해서는 연산 최적화가 필수적이다. 이를 위해, 메모리 접근을 줄이고 시행 명령어수를 줄이는 알고리즘을 개발하였다.        
            
   
2.사용 기술     
------        
* Assembly Coding
* Loop Tiling    
* Loop unrolling               

3.성적       
------    
* Compute Time을 4000ms -> 320ms까지 줄일 수 있었다.    
