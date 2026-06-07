
package com.yunnan.travel.controller;

import org.springframework.web.bind.annotation.*;
import java.util.Map;

@RestController
@RequestMapping("/api/ai")
public class AIController {

    @PostMapping("/travel-plan")
    public Map<String,String> generatePlan(@RequestBody Map<String,String> request) {
        return Map.of("plan","这里返回 AI 行程文本","pdfUrl","/api/ai/pdf?file=example.pdf");
    }

    @PostMapping("/share")
    public Map<String,String> sharePlan(@RequestParam Long planId) {
        return Map.of("shareUrl","/share/ABCDEFGH");
    }

    @GetMapping("/share/{shareId}")
    public Map<String,String> getSharedPlan(@PathVariable String shareId) {
        return Map.of("title","共享行程","content","这里显示共享行程内容");
    }
}
