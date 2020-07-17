package com.problemasPropuestos.ds;

public class EjercicioDos {

    public float nums[] = new float[3];
    
    public EjercicioDos(float... nums){        
        System.arraycopy(nums, 0, this.nums, 0, this.nums.length);
    }
    
    public float max(){
        float max = nums[0]; 
        if(nums[1] > max){
            max = nums[1];
        }
        if(nums[2] > max){
            max = nums[2];
        }
        return max;
    }
    
    
}
