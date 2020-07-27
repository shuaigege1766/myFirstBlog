package com.blog.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * 把博客和标签关系存到数据库中使用的类
 */

@Data
@AllArgsConstructor
@NoArgsConstructor
public class BlogAndTag {
    //标签和博客 多对多 那么我们需要进行单独得建表和建实体类关联
    //例如这样 一个博客就对应了多个标签，一个标签也对应多个博客
    /*博客1   标签1
      博客1  标签2
      博客1 标签3
      博客1 标签4
      博客2 标签3
      博客2 标签5
     */

    private Long tagId;
    private Long blogId;
}
