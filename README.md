# TAL VUE
TAL VUE


> A Vue.js project

## Build Setup

``` bash
# install dependencies
npm install

# serve with hot reload at localhost:8080
npm run dev

# build for production with minification
npm run build

# build for production and view the bundle analyzer report
npm run build --report
```

For a detailed explanation on how things work, check out the [guide](http://vuejs-templates.github.io/webpack/) and [docs for vue-loader](http://vuejs.github.io/vue-loader).


## 安装指南
1. npm install vuex --save
2. npm install axios --save


## eleme  组件
1. 参考：https://segmentfault.com/q/1010000012511902


## VUE 加快访问时间
https://www.jb51.net/article/142844.htm


还有添加这个：
  externals: {
    'vue': 'Vue',
    'vue-router': 'VueRouter',
    'element-ui': 'ELEMENT',
  },

### fly 网络层
https://github.com/wendux/fly


### 创建可以直接浏览的分支
参考：https://blog.csdn.net/weixin_42158115/article/details/82730043

重要说明：
```
1. npm run build
2. git branch gh-pages   //创建gh-pages分支
3. git checkout gh-pages  //切换到gh-pages分支
4. git add -f dist     //强制把dist文件夹提交到github
5. git subtree push --prefix dist origin gh-pages  //把dist文件夹单独部署到gh-pages分支
```
