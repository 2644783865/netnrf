﻿using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json.Linq;
using System.Collections.Generic;
using System.Linq;

namespace Netnr.ResponseFramework.ViewComponents
{
    public class ButtonViewComponent : ViewComponent
    {
        public IViewComponentResult Invoke()
        {
            string current_url = "/" + RouteData.Values["controller"]?.ToString() + "/" + RouteData.Values["action"]?.ToString();

            //按钮列表
            var listBtn = new List<Domain.SysButton>();

            //根据路由反查页面对应的菜单
            //所有链接保持小写
            var moMenu = Func.Common.QuerySysMenuList(x => x.SmUrl == current_url.ToLower()).FirstOrDefault();
            if (moMenu != null)
            {
                //登录用户的角色信息
                var luri = Func.Common.LoginUserRoleInfo(HttpContext);
                if (luri != null && !string.IsNullOrWhiteSpace(luri.SrButtons))
                {
                    //角色配置的按钮
                    var joRole = JObject.Parse(luri.SrButtons);
                    //根据菜单ID取对应的按钮
                    string btns = joRole[moMenu.SmId].ToStringOrEmpty();
                    if (!string.IsNullOrWhiteSpace(btns))
                    {
                        var btnids = btns.Split(',').ToList();

                        //根据按钮ID取按钮
                        listBtn = Func.Common.QuerySysButtonList(x => btnids.Contains(x.SbId));
                    }
                }
            }

            return View(listBtn);
        }
    }
}
