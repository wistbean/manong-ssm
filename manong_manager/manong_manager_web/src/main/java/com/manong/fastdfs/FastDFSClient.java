package com.manong.fastdfs;

import org.apache.commons.lang3.StringUtils;
import org.csource.common.NameValuePair;
import org.csource.fastdfs.*;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;

/**
 * Created by wistbean on 2018/11/29.
 */
public class FastDFSClient {

    private static StorageClient1 storageClient1 = null;

    static {
        try {
            // 获取配置文件
            String classPath = new File(FastDFSClient.class.getResource("/").getFile()).getCanonicalPath();
            String CONF_FILENAME = classPath + File.separator + "conf" + File.separator + "fdfs_client.conf";
            ClientGlobal.init(CONF_FILENAME);
            // 获取触发器
            TrackerClient trackerClient = new TrackerClient(ClientGlobal.g_tracker_group);
            TrackerServer trackerServer = trackerClient.getConnection();
            // 获取存储服务器
            StorageServer storageServer = trackerClient.getStoreStorage(trackerServer);
            storageClient1 = new StorageClient1(trackerServer, storageServer);
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    /**
     * @param fis      文件输入流
     * @param fileName 文件名称
     * @return
     */
    public static String uploadFile(InputStream fis, String fileName) {
        try {
            NameValuePair[] meta_list = null;

            //将输入流写入file_buff数组
            byte[] file_buff = null;
            if (fis != null) {
                int len = fis.available();
                file_buff = new byte[len];
                fis.read(file_buff);
            }

            String fileid = storageClient1.upload_file1(file_buff, getFileExt(fileName), meta_list);
            return fileid;
        } catch (Exception ex) {
            return null;
        } finally {
            if (fis != null) {
                try {
                    fis.close();
                } catch (IOException e) {
                    System.out.println(e);
                }
            }
        }
    }


    private static String getFileExt(String fileName) {
        if (StringUtils.isBlank(fileName) || !fileName.contains(".")) {
            return "";
        } else {
            return fileName.substring(fileName.lastIndexOf(".") + 1);
        }
    }

}
