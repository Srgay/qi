package com.qi.project.common;


import com.qi.framework.config.QiConfig;
import com.qi.framework.web.domain.AjaxResult;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

/**
 * 通用请求处理
 * 
 * @author ruoyi
 */
@RestController
public class CommonController
{

    /**
     * 通用上传请求
     */
    @PostMapping("/common/upload")
    public AjaxResult uploadFile(MultipartFile file) throws Exception
    {
        try
        {
            // 上传文件路径
            String filePath = QiConfig.getUploadPath();
            // 上传并返回新文件名称
           /* String fileName = FileUploadUtils.upload(filePath, file);
            String url = serverConfig.getUrl() + fileName;*/
            AjaxResult ajax = AjaxResult.success();
           /* ajax.put("fileName", fileName);
            ajax.put("url", url);*/
            return ajax;
        }
        catch (Exception e)
        {
            return AjaxResult.error(e.getMessage());
        }
    }
}
