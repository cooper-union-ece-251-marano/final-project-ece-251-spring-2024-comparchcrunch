fibonacci: 
  # Initialize loop counters
  addi $4, $0, $1  
  addi $5, $1, $0  

loop:
  sub $6, $2, $1  
  j  fibonacci   
  mfhi $3          

  mult $5, $5, $1  
  mflo $2          
  add  $7, $3, $5  

  slt  $8, $4, $2  
  beqz $8, fib_end  

  addi $4, $4, $1 
  move $5, $7      

  j loop            

fib_zero:
  addi $7, $0, $0 
  j fib_end        

fib_one:
  addi $7, $1, $0 
  j fib_end        

fib_end:
  j $ra   
