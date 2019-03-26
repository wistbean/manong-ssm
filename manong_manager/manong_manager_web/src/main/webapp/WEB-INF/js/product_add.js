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

                $("#productAddForm").find("select[name='cid2']").combobox({
                    onChange:function () {
                        var value = $("#cc2").val();
                        if(value==0){
                            $("#productAddForm").find("input[name='categoryId']").val($("#productAddForm").find("input[name='cid1']").val());
                        }else{
                            $("#productAddForm").find("input[name='categoryId']").val(value);
                        }
                    }
                });

            });

        };

        $("#productAddForm").find("select[name='cid']").combobox({
           onChange:function () {
               var value = $("#cc").val();
               $("#productAddForm").find("input[name='categoryId']").val(value);
               loadSubCategory(value);
           }
        });
    },

    initPicUpload: function () {
        $("#fileName").filebox({
            prompt:"选择图片",
            width:"200",
            buttonText:"浏览",
        });
        
        $(".uploadPic").click(function () {
            $.ajaxFileUpload({
                url:'/uploadfile',
                fileElementId:'filebox_file_id_1',
                type:'post',
                success:function (data) {
                    $("#img").attr("src","http://65.49.227.129:8888/" + $(data).find("body").text());
                    $("#productAddForm").find("input[name='image']").val($(data).find("body").text());
                }
            });
        });
    },


    init:function (data) {
        //实例化编辑器
        //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
        var ue = UE.getEditor('editor');
        //初始化商品分类
        this.initProductCategory();
        //初始化上传图片
        this.initPicUpload();
    }

}