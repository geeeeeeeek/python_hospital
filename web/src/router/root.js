// 路由表
const constantRouterMap = [

  {
    path: '/',
    redirect: '/admin',
  },
  {
    path: '/adminLogin',
    name: 'adminLogin',
    component: () => import('/@/views/admin-login.vue'),
  },
  {
    path: '/admin',
    name: 'admin',
    redirect: '/admin/thing',
    component: () => import('/@/views/main.vue'),
    children: [
      { path: 'thing', name: 'thing', component: () => import('/@/views/thing.vue') },
      { path: 'user', name: 'user', component: () => import('/@/views/user.vue') },
      { path: 'nurse', name: 'nurse', component: () => import('/@/views/nurse.vue') },
      { path: 'stay', name: 'stay', component: () => import('/@/views/stay.vue') },
      { path: 'medical', name: 'medical', component: () => import('/@/views/medical.vue') },
      { path: 'classification', name: 'classification', component: () => import('/@/views/classification.vue') },
      { path: 'tag', name: 'tag', component: () => import('/@/views/tag.vue') },
      { path: 'loginLog', name: 'loginLog', component: () => import('/@/views/login-log.vue') },
      { path: 'opLog', name: 'opLog', component: () => import('/@/views/op-log.vue') },
      { path: 'errorLog', name: 'errorLog', component: () => import('/@/views/error-log.vue') },
      { path: 'sysInfo', name: 'sysInfo', component: () => import('/@/views/sys-info.vue') },
    ]
  },
];

export default constantRouterMap;
