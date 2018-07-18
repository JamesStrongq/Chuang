package com.chuang.pojo;

public class JsonResult {
        private Integer code;
        private String msg;
        private String path;

        public JsonResult(){

        }

        public JsonResult(Integer code,String msg){
            this.code = code;
            this.msg = msg;
        }

        public static JsonResult ok(){
            return new JsonResult(null);
        }

        public JsonResult(Object data){
            this.code = 200;
            this.msg = "ok";
        }

    public Integer getCode() {
        return code;
    }

    public void setCode(Integer code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }
}
