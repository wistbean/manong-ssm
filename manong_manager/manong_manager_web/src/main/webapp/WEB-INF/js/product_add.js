var MN = MANONG ={

    initProductCategory: function () {
        function loadSubCategory(value) {

            var $box = $("#productAddForm").find('#cbox');

            if(value == 0){
                $box.html('').hide();
                return;
            }

            $.getJSON("/product_category/list",{id:value},function (data) {

                var s = '';
                s = '<select id="cc2" class="easyui-combobox" name="cid2" style="width:200px;">';
                s += '<option value="0">请选二级分类</option>';

                $.each(data,function (idx,item) {
                    s += '<option value="'+item.id+'">'+item.text+'</option>';
                });

                s += '</select>'
                $box.html(s).show();

            });

        };

        $("#productAddForm").find("select[name='cid']").combobox({
           onChange:function () {
               var value = $("#cc").val();
               loadSubCategory(value);
           }
        });
    },
    init:function (data) {
        //初始化商品分类
        this.initProductCategory();
    }

}