package pojo;

import java.util.List;

/**
 * Created by wistbean on 2019/2/24.
 */
public class Res_Categories {

    private List<CategoriesBean> categories;

    public List<CategoriesBean> getCategories() {
        return categories;
    }

    public void setCategories(List<CategoriesBean> categories) {
        this.categories = categories;
    }

    public static class CategoriesBean {
        /**
         * cat_id : 1
         * name : 父级分类名称
         * sub_cetegories : [{"cat_id":"2","name":"java se"},{"cat_id":"3","name":"java ee"}]
         */

        private String cat_id;
        private String name;
        private List<SubCetegoriesBean> sub_cetegories;

        public String getCat_id() {
            return cat_id;
        }

        public void setCat_id(String cat_id) {
            this.cat_id = cat_id;
        }

        public String getName() {
            return name;
        }

        public void setName(String name) {
            this.name = name;
        }

        public List<SubCetegoriesBean> getSub_cetegories() {
            return sub_cetegories;
        }

        public void setSub_cetegories(List<SubCetegoriesBean> sub_cetegories) {
            this.sub_cetegories = sub_cetegories;
        }

        public static class SubCetegoriesBean {
            /**
             * cat_id : 2
             * name : java se
             */

            private String cat_id;
            private String name;

            public String getCat_id() {
                return cat_id;
            }

            public void setCat_id(String cat_id) {
                this.cat_id = cat_id;
            }

            public String getName() {
                return name;
            }

            public void setName(String name) {
                this.name = name;
            }
        }
    }
}
