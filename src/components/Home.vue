<template>
  <div style="margin-top: 60px;text-align: center;">

    <h1>Flutter & 901项目</h1>
    <hr style="height:1px;border:none;border-top:1px dashed #0066CC; margin-left: 100px; margin-right: 100px"/>

    <div style="margin-left: 150px;text-align: left">


      <el-row>

        <el-col :span="12"><div class="grid-content bg-purple-light">

          <el-button type="text">需求相关</el-button>

          <p><a href="https://lanhuapp.com/web/#/item/project/board?pid=fec5f440-b1cf-4b91-a697-7a261a82f861" target="view_window">
            <el-button size="mini" type="primary" round icon="el-icon-mobile-phone">蓝湖 UI</el-button>
          </a></p>

          <p><a href="https://lanhuapp.com/url/y2Wrf-cPeuw" target="view_window">
            <el-button size="mini" type="primary" round icon="el-icon-mobile-phone">蓝湖 DRD</el-button>
          </a></p>

          <p><a href="https://wiki.zhiyinlou.com/pages/viewpage.action?pageId=22238068" target="view_window">
            <el-button size="mini" type="primary" round icon="el-icon-document">V1.0版本 产品文档</el-button>
          </a></p>

          <p><a href="https://lanhuapp.com/url/TgwQ6-aqeiE" target="view_window">
            <el-button size="mini" type="primary" round icon="el-icon-mobile-phone">蓝湖 课堂 PRD 原型图</el-button>
          </a></p>

          <p><a href="http://yapi.test-dahai.com/project/156/interface/api" target="view_window">
            <el-button size="mini" type="primary" round icon="el-icon-view">北极星服务端接口(Mock)</el-button>
          </a></p>

        </div></el-col>

        <el-col :span="12"><div class="grid-content bg-purple">

          <el-button type="text">技术方案</el-button>


          <p><a href="https://wiki.zhiyinlou.com/display/businessDahai/Flutter" target="view_window">
            <el-button size="mini" type="primary" round icon="el-icon-search">大海 Flutter 技术方案汇总</el-button>
          </a></p>

        </div></el-col>

      </el-row>






    </div>


    <!--<hr style="height:1px;border:none;border-top:1px dashed #0066CC; margin-left: 100px; margin-right: 100px"/>-->
    <!--自动发布11-->
    <hr style="height:1px;border:none;border-top:1px dashed #0066CC; margin-left: 100px; margin-right: 100px; margin-top: 100px"/>


    <!--<h1>Android</h1>-->

    <!--<p><a href="https://github.com/Blankj/AndroidUtilCode/blob/master/utilcode/README-CN.md" target="view_window">-->
      <!--<el-button size="mini" type="primary" round>Android 常用工具类查询</el-button>-->
    <!--</a></p>-->

    <!--<p>-->
      <!--<router-link to="Git"  arget="view_window">-->
      <!--<el-button size="mini" type="primary" round>Git基本操作指南</el-button></router-link></p>-->

    <!--<hr style="height:1px;border:none;border-top:1px dashed #0066CC; margin-left: 200px; margin-right: 200px"/>-->


    <h1 style="margin-top: 100px">时间戳</h1>


    <div>
      <el-button @click="getNowTime" type="success" size="medium">现在时间戳</el-button> &nbsp;&nbsp; ======>> &nbsp;&nbsp;
      <el-input v-model="now_time" placeholder="点击按钮生成时间戳" style="width: 180px;margin: 20px">你放好</el-input>

      <!--<p><el-input v-model="input" placeholder="请输入时间戳" style="margin: 0px">你放好</el-input></p>-->
      <!--<p><el-button type="success" size="medium">现在时间戳</el-button></p>-->
    </div>

    <div>
      <el-input v-model="bj_time" placeholder="请输入时间戳" style="width: 180px;margin: 20px">你放好</el-input>
      <el-button @click="getBJTime" type="success" size="medium">转成_北京_时间 >></el-button>
      <el-input v-model="bj_time_success" placeholder="将自动生成北京时间" style="width: 180px;margin: 20px"></el-input>
    </div>

    <div>
      <el-input v-model="unix_time" placeholder="请输入北京时间" style="width: 180px;margin: 20px">你放好</el-input>
      <el-button @click="getUnixTime" type="success" size="medium">转成Unix时间戳 >></el-button>
      <el-input v-model="unix_time_success" placeholder="将自动生成时间戳" style="width: 180px;margin: 20px">你放好</el-input>
    </div>

    <hr style="height:1px;border:none;border-top:1px dashed #0066CC; margin-left: 200px; margin-right: 200px"/>

  </div>
</template>

<script>
  export default {
    name: "Home",

    data() {
      return {
        resultStatus: false,
        now_time: '',
        bj_time: '',
        bj_time_success: '',
        unix_time: '',
        unix_time_success: '',
        data: [{
          'result': '',
          'taskId': '',
        }]
      }
    },
    methods: {
      getNowTime() {
        var now = new Date();
        now = now.getTime();
        console.log(now);
        this.now_time = now;
      },
      getBJTime() {
        // var t = 787986456465;  // 当参数为数字的时候，那么这个参数就是时间戳，被视为毫秒，创建一个距离1970年1月一日指定毫秒的时间日期对象。
        let time = new Date(Number(this.bj_time));
        console.log(time);

        this.bj_time_success = this.timestampToTime(Number(this.bj_time));

        let date = new Date(time); //时间戳为10位需*1000，时间戳为13位的话不需乘1000
        let Y = date.getFullYear() + '-';
        let M = (date.getMonth() + 1 < 10 ? '0' + (date.getMonth() + 1) : date.getMonth() + 1) + '-';
        let D = this.change(date.getDate()) + ' ';
        let h = this.change(date.getHours()) + ':';
        let m = this.change(date.getMinutes()) + ':';
        let s = this.change(date.getSeconds());
        this.bj_time_success = Y + M + D + h + m + s;

      },
      getUnixTime() {
        // var t = "2017-12-08 20:5:30";  // 月、日、时、分、秒如果不满两位数可不带0.
        time = this.unix_time;
        let time = time.replace(new RegExp(/-/gm), "/"); 　　//将所有的'-'转为'/'即可
        let t = new Date(time).getTime();  // 将指定日期转换为标准日期格式。Fri Dec 08 2017 20:05:30 GMT+0800 (中国标准时间)
        console.log(t);
        this.unix_time_success = t; // 将转换后的标准日期转换为时间戳。
      },


      timestampToTime(time) {
        let date = new Date(this.bj_time); //时间戳为10位需*1000，时间戳为13位的话不需乘1000
        let Y = date.getFullYear() + '-';
        let M = (date.getMonth() + 1 < 10 ? '0' + (date.getMonth() + 1) : date.getMonth() + 1) + '-';
        let D = this.change(date.getDate()) + ' ';
        let h = this.change(date.getHours()) + ':';
        let m = this.change(date.getMinutes()) + ':';
        let s = this.change(date.getSeconds());
        return Y + M + D + h + m + s;
      }
      ,
      change(t) {
        if (t < 10) {
          return "0" + t;
        } else {
          return t;
        }
      }
      ,


    }
  }

  function timestampToTime(timestamp) {
    var date = new Date(timestamp);//时间戳为10位需*1000，时间戳为13位的话不需乘1000
    Y = date.getFullYear() + '-';
    M = (date.getMonth() + 1 < 10 ? '0' + (date.getMonth() + 1) : date.getMonth() + 1) + '-';
    D = date.getDate() + ' ';
    h = date.getHours() + ':';
    m = date.getMinutes() + ':';
    s = date.getSeconds();
    return Y + M + D + h + m + s;
  }
</script>

<style>
  /*.el-input {*/
  /*width: 180px;*/
  /*margin: 20px;*/
  /*}*/
</style>
