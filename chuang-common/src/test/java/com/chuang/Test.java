package com.chuang;

import java.util.Scanner;

public class Test {
    public static void main(String[] args) {
        Scanner s = new Scanner(System.in);
        int len = s.nextInt();
        int[] arr = new int[len];
        for(int i = 0;i < arr.length;i++){
            arr[i] = s.nextInt();
        }
        sort(arr);
       for(int i = 0;i < arr.length;i++){
           System.out.print(arr[i] + " ");
       }
    }

    public static void sort(int[] arr){
        for(int i = arr.length / 2 - 1;i >= 0;i--){
            adjust(arr,i,arr.length);
        }
        for(int j = arr.length - 1;j > 0;j--){
            swap(arr,0,j);
            adjust(arr,0,j);
        }
    }


    public static void adjust(int[] arr,int i,int length){
        int temp = arr[i];
        for(int k = 2 * i + 1;k < length;k = k * 2 + 1){
            if(k + 1 < length && arr[k] < arr[k + 1]){
                k++ ;
            }
            if(arr[k] > temp){
                arr[i] = arr[k];
                i = k;
            }else{
                break;
            }
        }
       arr[i] = temp;
    }

    public static void swap(int[] arr,int a,int b){
        int temp = arr[a];
        arr[a] = arr[b];
        arr[b] = temp;
    }

}
