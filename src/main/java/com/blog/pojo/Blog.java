package com.blog.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Blog {

    private Long id;   //主键
    private String title;  //标题
    private String content;  //内容
    private String firstPicture;  //首图
    private String flag;    //标志
    private String description;  //博客简单描述属性
    private Integer views;  //浏览次数
    private boolean appreciation;    //赞赏是否开启
    private boolean shareStatement;   //转载声明是否开启
    private boolean commentabled;      //评论是否开启
    private boolean published;        //是否发布开启
    private boolean recommend;        //是否推荐开启
    private Date createTime;         //创造时间
    private Date updateTime;          //更新时间

    //这个属性用来在mybatis中进行连接查询的
    private Long typeId;        //多个博客对应一个分类 多对一 在多这边进行关联 分类主键
    private Type type;

    private Long userId;        //多个博客对应一个用户 多对一 在多这边进行关联 用户主键
    private User user;

    //获取多个标签的id 一个博客有多个标签 一个标签也可以有多个博客 多对多
    private String tagIds;      //前面把tags转换成了 1，2，3形式得字符串 多对多
    private List<Tag> tags = new ArrayList<>();

    //一个博客有多个评论 每个评论还有自己得子评论
    private List<Comment> comments = new ArrayList<>();

    public void init(){
        this.tagIds = tagsToIds(this.getTags());
    }

    //将tags集合转换为tagIds字符串形式：“1,2,3”,用于编辑博客时显示博客的tag
    private String tagsToIds(List<Tag> tags){
        if(!tags.isEmpty()){
            StringBuffer ids = new StringBuffer();
            boolean flag = false;
            for(Tag tag: tags){
                if(flag){
                    ids.append(",");
                }else {
                    flag = true;
                }
                ids.append(tag.getId());
            }
            return ids.toString();
        }else {
            return tagIds;
        }
    }
}
